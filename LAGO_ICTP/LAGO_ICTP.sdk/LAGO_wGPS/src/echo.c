/******************************************************************************
*
* Copyright (C) 2016 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include "xil_io.h"
#include "xil_cache.h"
#include "DMA.h"
#include "GPS_TimeStamp.h"

#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "xil_printf.h"
#include "FreeRTOS.h"
#include "task.h"
#include "echo.h"

#include "xaxidma.h"

#include "IIC_RW.h"
#include "MAX5216PM.h"
#include "TempPress.h"

#include "global.h"
#include "Histogram.h"

#include "comblock_parameters.h"

#define THREAD_STACKSIZE 1024



u16_t echo_port = 7;


void print_echo_app_header()
{
    xil_printf("%20s %6d %s\r\n", "echo server",
                        echo_port,
                        "$ telnet <board_ip> 7");

}

/* thread spawned for each connection */
char *ethe_in_buf;
char *pch;
char *addr, *val;

#define TCP_PAYLOAD_SIZE	( 8192 )
u32	samples_bytes = 0;

static volatile u16 cur_seg = 0;
static volatile u8* cur_buf = NULL;


#define DATAS_out (*(volatile int (*)[TCP_PAYLOAD_SIZE*16])(RX_BUFFER_BASE))

XAxiDma AxiDma;

void process_echo_request(void *p)
{
	int sd = (int)p;
//	int TOTAL_BUF_SIZE= 131072;
	int TOTAL_BUF_SIZE= 131072; //new fifo size
	#define buf_step 0x2000;
	int RECV_BUF_SIZE = 2048;

	char recv_buf[RECV_BUF_SIZE];

	int n, nwrote;
	double po,to;

	int auto_dac=0;

	u32 trig;
	unsigned long D1, D2;
	double T, P;
	double TempT, TempP;
	float temp;
	int SENSORS_BUF_SIZE=20;
	unsigned char trans_buf[SENSORS_BUF_SIZE];

	for (int i=0; i<SENSORS_BUF_SIZE; i++){
		trans_buf[i]=0;
	}

	samples_bytes = ETH_PACK_SIZE;
#ifdef ENABLE_SENSORS
	MS5611_setD2(I2C_DeviceNr, MS5611_addr);
	for(int i=0; i<10000000; i++);
	D2=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
	MS5611_setD1(I2C_DeviceNr, MS5611_addr);
	for(int i=0; i<10000000; i++);
#endif

	//Initialization of timestamp
	Xil_Out32(comblock_reg_block_out_0, 50); //setting threashold of 100
	Xil_Out32(comblock_reg_block_out_1, 3);
	Xil_Out32(comblock_reg_block_out_1, 1);

	u32 ts_trig;
	u32 ts[2]={0,0};
	u32 ts_lat=2; //Timestamp trigger latency
	u32 adc_ck=4; //ADC sample time in nanoseconds
	u8 thr=0;
	u8 depth=0;

	//Histogram related variables
	int dec, counts, state;
	u32 histo_buf[MEMORY_BINS];
	char sc;

	//FIFO related variables
	u32 fifo_depth=1536;
	u32 fifo_buff[fifo_depth];
	u32 fifo_status=0;

// FUNCTION CYCLE STARTS //
	while (1) {

#ifdef	ENABLE_SENSORS
		D1=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
		temp=ADT420_read(I2C_DeviceNr, ADT420_addr);

		TempT=MS5611_getTemp(D2);
		TempP=MS5611_getPressure(D1,D2,T);
		if (TempT>0){
			T=TempT;
			P=TempP;
		}
		MS5611_setD2(I2C_DeviceNr, MS5611_addr);
#endif

		if ((n = read(sd, recv_buf, RECV_BUF_SIZE)) <= 0) {
			xil_printf("%s: error reading from socket %d, closing socket\r\n", __FUNCTION__, sd);
			break;
		}
		pch = strtok(recv_buf, ",");

		xil_printf("*************");
		xil_printf(pch);
		xil_printf("*************");
		xil_printf("\n\r");





		if(strncmp(pch, "thr_write", 9) == 0){
			pch = strtok(NULL, ",");
			thr= atoi(pch); //set manualy DAC value or from the function
			Xil_Out32(comblock_reg_block_out_1, 0); //disable trigger and clear value
			Xil_Out32(comblock_reg_block_out_0, thr); //setting threashold
			Xil_Out32(comblock_reg_block_out_1, 1); //enable trigger

			xil_printf("Thr set to: %d\n\r",thr);

		}
		else if(strncmp(pch, "dac_write", 9) == 0){
					pch = strtok(NULL, ",");
					addr= pch; //set manualy DAC value or from the function
					pch = strtok(NULL, ",");
					val = pch;
					pch = strtok(NULL, ",");
					po = atof(pch);
					pch = strtok(NULL, ",");
					to = atof(pch)+273.15;
					auto_dac=atoi(addr);
					xil_printf("Auto_function dac function enable: %d", auto_dac);
#ifdef ENABLE_DAC
					set_dac_init(atoi(val),po, to);
#else
					xil_printf("DAC is Disable \n\r");
#endif

		}
		else if(strncmp(pch, "ts_read", 7) == 0){
				//Timestamp test
				ts_trig=Xil_In32(comblock_reg_block_in_0);
				xil_printf("\n\r \n\r Event status %x \n\r",ts_trig);
				if (ts_trig>0){
					xil_printf("********************* Event happen at ");
					ts[0]=Xil_In32(comblock_reg_block_in_1);
					ts[1]=(Xil_In32(comblock_reg_block_in_2)-ts_lat)*adc_ck; //(clk_cycles - time_latency) * adc_clk(ns)
					if (ts_trig==3){ //If time correction is needed.
						ts[1]=ts[1]-adc_ck/2; //Timestamp correction.
					}


					xil_printf("%x seg and %x ns **********************\n\r",ts[0], ts[1]);
					Xil_Out32(comblock_reg_block_out_1, 3);
					Xil_Out32(comblock_reg_block_out_1, 1);
				}
				else{
					xil_printf("Not timestamp \n\r");
					ts[0]=0;
					ts[1]=0;
				}
				//writing timestamp
				xil_printf("Writing timestamp data \n\r");
				xil_printf("Ts is sck %x and fclk %x /n/r",ts[0], ts[1]);
				if((nwrote=write(sd, ts,8))<0){ //8 is the size two 32 bits
						xil_printf("Not sent %c \r\n",cur_buf[0]);
						break;

				}
				xil_printf("done \n\r");

				//end timestamp test
		}
		else if(strncmp(pch, "mem_write", 9) == 0){
#ifdef ENABLE_DAC
			dac_funct(T, P, temp, auto_dac);
#endif
			pch = strtok(NULL, ",");
			addr = pch;
			pch = strtok(NULL, ",");
			val = pch;
			if (addr != 0){
				Xil_Out32(atoi(addr), atoi(val));
				xil_printf("value in 0x%x = %d\n\r", atoi(addr), Xil_In32(atoi(addr)));
			}
		}else if(strncmp(pch, "mem_read", 8) == 0){

					xil_printf("Waiting for trigger... \n\r");
					Xil_Out32(TRIG_COMPLETE_READ, 0);
					int timeout=0;

					while((trig=Xil_In32(TRIG)) != 1){// wait for trigger
						timeout++;
						if (timeout==1000000)
							break;
					}
					if (trig==1){
						DMA_Transfer();
						Xil_Out32(TRIG_COMPLETE_READ, 1);
						xil_printf("trigger happend .....\n\r");

				/*********************************************************************************/
					Xil_DCacheInvalidateRange( RX_BUFFER_BASE, samples_bytes );
					}
					else{
						xil_printf("Trigger timeout \n\r");
					}

					cur_seg = 0;
					cur_buf = ( u8* ) RX_BUFFER_BASE;







					xil_printf("Writing To Osciloscope \n\r");

					if((nwrote=write(sd, (char *) cur_buf,TOTAL_BUF_SIZE))<0){
							xil_printf("Not sent %c \r\n",cur_buf[0]);
							break;

					}
					xil_printf("done \n\r");
					xil_printf("Writing To Sensors \n\r");
					if((nwrote=write(sd, trans_buf,SENSORS_BUF_SIZE))<0){
							xil_printf("Not sent %c \r\n",cur_buf[0]);
							break;

					}
					xil_printf("done \n\r");

		}
//  Histogram related functions set
		else if (strncmp(pch, "gen_histo", 9)==0){
			xil_printf("Cleaning memory... ");
			clean_TDPR();
			xil_printf("Done.  \r\n");
			pch=strtok(NULL, ",");
			counts=atoi(pch);
			if (counts>0){
				xil_printf("Setting count number to %d \r\n",counts);
				Histo_SetCounts(counts);
				xil_printf("Initializing Count \r\n");
				Histo_init_count();
				xil_printf("Done\n\r");
				xil_printf("Generating histogram Done\n\r");
			}
		}
			else if (strncmp(pch, "get_histo", 9)==0){
#ifdef ENABLE_DAC
				dac_funct(T, P, temp, auto_dac);
#endif
				xil_printf("Getting histogram data \n\r");
				u32 cuenta=Xil_In32(histo_curr_clk_count);
				xil_printf("Current Count %d\r\n", cuenta);
				int status=Histo_is_done();
				printf("Histogram Status %x \n\r",status);
				if((state=Histo_rfm(histo_buf))==1){
					xil_printf("Full histogram not ready for reading \n\r");
					sc=48;

					if ((nwrote = write(sd, &sc, 1)) < 0) {
						xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
							__FUNCTION__, n, nwrote);
						xil_printf("Closing socket %d\r\n", sd);
						break;
					}
					if ((nwrote = write(sd, &cuenta, 4)) < 0) {
						xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
							__FUNCTION__, n, nwrote);
						xil_printf("Closing socket %d\r\n", sd);
						break;
					}
				}
				else{
					sc=49;
					if ((nwrote = write(sd, &sc, 1)) < 0) {
						xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
							__FUNCTION__, n, nwrote);
						xil_printf("Closing socket %d\r\n", sd);
						break;
					}
					xil_printf("Writing histogram data \n\r");
					if ((nwrote = write(sd, histo_buf, MEMORY_BINS)) < 0) {
						xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
							__FUNCTION__, n, nwrote);
						xil_printf("Closing socket %d\r\n", sd);
					break;
					}
				}

			}
		else if (strncmp(pch, "dec_factor", 10)==0){
				pch=strtok(NULL, ",");
				dec=atoi(pch);
				xil_printf("Setting Decimator Factor to: %d ",dec);
				Xil_Out32(ADC_Decim_factor,dec); //N in decimation system
				xil_printf("Done\n\r");
			}

//End of histogram related function set

//TimeStamp from GPS Print

		else if (strncmp(pch, "TSget_init", 10)==0){
			if((nwrote=write(sd, Date,8))<0){
					xil_printf("Not sent %c \r\n");
					break;
			}
			if((nwrote=write(sd, Time,6))<0){
					xil_printf("Not sent %c \r\n");
					break;
			}

			xil_printf("done \n\r");
		}




//FIFO read function
		else if(strncmp(pch, "fifo_read", 9) == 0){
			xil_printf("Inside fifo read \n\r");
			fifo_status=Xil_In32(comblock_FIFO_STATUS);
			xil_printf("Fifo status %x \n\r",fifo_status);
			int fval=0;
			if ((fifo_status&0x00000001)!=1){//if FIFO is not empty read
//				for (int var = 0; var < fifo_depth-1; ++var) {
//					fifo_buff[var] = Xil_In32(comblock_FIFO_RD);
//					if (var<30){
//						xil_printf("%x inside if %x \n\r",fifo_buff[var], var);
//					}
//					fifo_status=Xil_In32(comblock_FIFO_STATUS);
//					if((fifo_status&0x00000001)==1){ //if FIFO is not empty continue reading
//						xil_printf("Fifo is empty, %d values to send\n\r",var);
//						fval=var;
//						break;
//					}
//				}
				xil_printf("Sending %d fifo values... ",fval);
				if((nwrote = write(sd, &fval, 4)) < 0) { //send size of fifo
					xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
						__FUNCTION__, n, nwrote);
					break;
				}
				if((nwrote = write(sd, &fifo_buff, 4*fval)) < 0) { //send fifo_content
					xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
						__FUNCTION__, n, nwrote);
					break;
				}
				xil_printf("done.\n\r");
			}
			else{
				int var=0;
				if((nwrote = write(sd, &var, 4)) < 0) { //send size of fifo
					xil_printf("%s: ERROR responding to client echo request. received = %d, written = %d\r\n",
						__FUNCTION__, n, nwrote);
					break;
				}
			}
		}
		else if (!strncmp(pch, "quit", 4)){
			set_dac_init(0,po, to);
			dac_funct(T, P, temp, 0);//Turning down the voltage
			break;
		}else{
			xil_printf(ethe_in_buf);
			break;
		}

#ifdef ENABLE_SENSORS
			D2=MS5611_getADC(I2C_DeviceNr, MS5611_addr);

			printf("t: %f, T: %f, P: %f\n\r",temp, T, P);
			pack_buffer(trans_buf, T, P, temp);
			MS5611_setD1(I2C_DeviceNr, MS5611_addr);
			for(int i=0; i<1000000; i++);
#endif
			xil_printf("Temperature and pressure writing in registers \n\r");
			u32 *TT=(u32 *)&T;
			u32 *PP=(u32 *)&P;
			Xil_Out32(comblock_reg_block_out_11,TT[0]);
			Xil_Out32(comblock_reg_block_out_12,TT[1]);
			Xil_Out32(comblock_reg_block_out_13,PP[0]);
			Xil_Out32(comblock_reg_block_out_14,PP[1]);
	}

	/* close connection */
	set_dac_init(0,po, to);
	dac_funct(T, P, temp, 0);//Turning down the voltage

	close(sd);
	vTaskDelete(NULL);
}

void echo_application_thread()
{
	int sock, new_sd;
	struct sockaddr_in address, remote;
	int size;

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = INADDR_ANY;

	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0)
		return;

	lwip_listen(sock, 0);

	size = sizeof(remote);

	while (1) {
		if ((new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0) {
			sys_thread_new("echos", process_echo_request,
				(void*)new_sd,
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
		}
	}
}
