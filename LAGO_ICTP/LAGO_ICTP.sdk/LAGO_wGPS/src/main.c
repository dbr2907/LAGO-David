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
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "xil_io.h"
#include "echo.h"

#include "GPS_TimeStamp.h"

#include "xgpio.h"


#include "comblock_parameters.h"

#include "IIC_RW.h"
#include "TempPress.h"
#include "MAX5216PM.h"

#include "DS3231M.h"

#include "global.h"

#include "sleep.h"

#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

int main_thread();
void print_echo_app_header();
void echo_application_thread(void *);
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

#define THREAD_STACKSIZE 1024



static struct netif server_netif;
struct netif *echo_netif;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));
}

#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

#endif
int main()
{
		Xil_Out32(comblock_reg_block_out_15, 0);
	//	Xil_Out32(XPAR_ADC_CONTROLLER_FMC_ADC_CONTROLLER_0_S00_AXI_BASEADDR, 396); //396 is default
		Xil_Out32(comblock_reg_block_out_7,396);
	//	Xil_Out32(XPAR_DECIMATION_SYSTEM_AXI_GPIO_0_BASEADDR, 6);
		Xil_Out32(comblock_reg_block_out_3, 10);


		/*********************************************
		 * Sensors Init */
		xil_printf("\r\n\r\n");
		xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

#ifdef ENABLE_RTCLK

		xil_printf("I2C Initialization \n\r");
		xI2C_Init (I2C_DeviceNr);
		//	Starting RTCLK
		xil_printf("Starting RTCLK.... ");
		//starting 1hz clock, disable BBSQW, temperature compensation enable, interrupts disable, alarms disable
		DS3231M_set_reg(DS3231M_addr, DS3231M_control, 0x20);

		u8 st[4]={DS3231M_seconds, 0x00, 0x00, 0x00}; //start time seconds, minutes, hours

		//TODO set current time to the timer.

		DS3231M_set_mregs(DS3231M_addr, &st, 4); //setting time to start time

		u8 initial_time[3];
		DS3231M_rd_reg(DS3231M_addr, DS3231M_seconds, &initial_time, 3);


		xil_printf("Startup time %x:%x.%x \n\r",initial_time[2],initial_time[1],initial_time[0]);

#endif

		////***************************///

#ifdef ENABLE_GPS_RTC
		XGpio Fix;
		int Fix_F=0;
		xil_printf("Initializing FIX\r\n");
		XGpio_Initialize(&Fix, XPAR_FIX_DEVICE_ID);
		xil_printf("Waiting for Fix from GPS\r\n");
		while(Fix_F!=1){
			Fix_F = XGpio_DiscreteRead(&Fix, 1);
		}
		xil_printf("Fix Obtained from GPS\r\n");
		sleep(0.5);
		GetTimeStamp();
		TimeStampPrint();

#endif

#ifdef ENABLE_SENSORS
#ifndef ENABLE_RTCLK
		xil_printf("Start Sensors Initialization \n\r");
		xI2C_Init (I2C_DeviceNr);
#endif
		unsigned char adr;
		u8 iic_dat[2];
		unsigned char  B[16];
		unsigned char C[2]={0,0};
		int state;

			//Sensors

		for (int i=0; i<16; i=i+2)
		{
			adr=0xA0+i;
			state=xI2C_WrRd (I2C_DeviceNr, MS5611_addr, &adr, 1,   &C, 2);
			if (state<1){
				xil_printf("i2c init \n\r");
			}
			B[i]=C[0];
			B[i+1]=C[1];
		}

			  Calibs.Manuf = (B[0] << 8) | B[1];
			  Calibs.dig_C1 = (B[2] << 8) | B[3];
			  Calibs.dig_C2 = (B[4] << 8) | B[5];

			  Calibs.dig_C3 = (B[6] << 8) | B[7];
			  Calibs.dig_C4 = (B[8] << 8) | B[9];
			  Calibs.dig_C5 = (B[10] << 8) | B[11];
			  Calibs.dig_C6 = (B[12] << 8) | B[13];
			  Calibs.dig_CRC = (B[14] << 8) | ( B[15] & 0x0f);


		xil_printf("MS5611 Calib Parameters \n\r");
		xil_printf("Calibs Manuf: %x \n\r",Calibs.Manuf);
		xil_printf("Calibs C1:   %x \n\r",Calibs.dig_C1);
		xil_printf("Calibs C2:   %x \n\r",Calibs.dig_C2);
		xil_printf("Calibs C3:   %x \n\r",Calibs.dig_C3);
		xil_printf("Calibs C4:   %x \n\r",Calibs.dig_C4);
		xil_printf("Calibs C5:   %x \n\r",Calibs.dig_C5);
		xil_printf("Calibs C6:   %x \n\r",Calibs.dig_C6);
		xil_printf("Calibs CRC:  %x \n\r",Calibs.dig_CRC);
		/*End of Sensors Init*/

		//Sensors first read test
		MS5611_setD2(I2C_DeviceNr, MS5611_addr);
		for(int i=0; i<10000000; i++);
		unsigned long D2=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
		MS5611_setD1(I2C_DeviceNr, MS5611_addr);
		float temp=ADT420_read(I2C_DeviceNr, ADT420_addr);
		for(int i=0; i<10000000; i++);
		double T=MS5611_getTemp(D2);
		unsigned long D1=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
		double P=MS5611_getPressure(D1, D2, T);


		printf("t: %f, T: %f, P: %f\n\r",temp, T, P);
		set_dac_init(0, P, temp+273.15); //setting initial values for function.
		//end of sensors first test
	#else
		xil_printf("Sensors Initialization Disabled\n\r");
	#endif

	#ifdef ENABLE_DAC
		xil_printf("DAC Initialization\n\r");
		dac_init();
		set_dac_init(0,0, 0);
//		set_DAC_value(1,1,0); //TODO UNCOMENT TO SET 0 AT STARTUP

	#else
		xil_printf("DAC Initialization Disabled\n\r");
	#endif

//Initializing fifo just for testing
	u32 reg = (20<<24)+(10<<16)+(2); //Setting test values in register
	xil_printf("Initializing FIFO %x\n\r",reg);
	Xil_Out32(comblock_reg_block_out_10, 2); //cleaning fifo
	int fifo_status=Xil_In32(comblock_FIFO_STATUS);
	xil_printf("Fifo status %x",fifo_status);
	reg = (20<<24)+(10<<16)+(1);
	xil_printf("Initializing FIFO %x\n\r",reg);
	Xil_Out32(comblock_reg_block_out_10, reg); //enable fifo
	fifo_status=Xil_In32(comblock_FIFO_STATUS);
	xil_printf("Fifo status %x",fifo_status);

	sys_thread_new("main_thrd", (void(*)(void*))main_thread, 0,
	                THREAD_STACKSIZE,
	                DEFAULT_THREAD_PRIO);
	vTaskStartScheduler();
	while(1);
	return 0;
}

void network_thread(void *p)
{
    struct netif *netif;
    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
#if LWIP_IPV6==0
    ip_addr_t ipaddr, netmask, gw;
#if LWIP_DHCP==1
    int mscnt = 0;
#endif
#endif

    netif = &server_netif;

    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP Socket Mode Echo server Demo Application ------\r\n");

#if LWIP_IPV6==0
#if LWIP_DHCP==0
    /* initliaze IP addresses to be used */
    IP4_ADDR(&ipaddr,  169, 254, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 0,  0);
    IP4_ADDR(&gw,      169, 254, 1, 1);
#endif

    /* print out IP settings of the board */

#if LWIP_DHCP==0
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif
#endif

#if LWIP_IPV6==0
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
	xil_printf("Error adding N/W interface\r\n");
	return;
    }
#else
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
	xil_printf("Error adding N/W interface\r\n");
	return;
    }

    netif->ip6_autoconfig_enabled = 1;

    netif_create_ip6_linklocal_address(netif, 1);
    netif_ip6_addr_set_state(netif, 0, IP6_ADDR_VALID);

    print_ip6("\n\rBoard IPv6 address ", &netif->ip6_addr[0].u_addr.ip6);
#endif

    netif_set_default(netif);

    /* specify that the network if is up */
    netif_set_up(netif);

    /* start packet receive thread - required for lwIP operation */
    sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif,
            THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    dhcp_start(netif);
    while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
    xil_printf("\r\n");
    xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
    xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod", echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
#else
    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod",echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
    return;
}

int main_thread()
{
#if LWIP_DHCP==1
	int mscnt = 0;
#endif

#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	/* initialize lwIP before calling sys_thread_new */
    lwip_init();

    /* any thread using lwIP should be created using sys_thread_new */
    sys_thread_new("NW_THRD", network_thread, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    while (1) {
	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= 10000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			xil_printf("Configuring default IP of 169.254.1.10\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  169, 254, 1, 10);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 0,  0);
			IP4_ADDR(&(server_netif.gw),  169, 254, 1, 1);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
			xil_printf("\r\n");
			xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
			xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

			print_echo_app_header();
			xil_printf("\r\n");
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO);
			break;
		}
	}
#endif
#endif
    vTaskDelete(NULL);
    return 0;
}
