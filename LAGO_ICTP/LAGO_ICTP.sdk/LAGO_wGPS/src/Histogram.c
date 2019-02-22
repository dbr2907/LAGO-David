/*
 * Histogram.c
 *
 *  Created on: Jul 27, 2018
 *      Author: infolab
 */
#include "Histogram.h"
#include "comblock_parameters.h"
#include <stdio.h>
#include <stdlib.h>
#include "xil_io.h"

int Histo_SetCounts(u32 val){
	xil_printf("Setting Count number as %l",val);
	Xil_Out32(Histo_set_count_val, val); //Send max_count_value to histogram
	Xil_Out32(Histo_Enable_reg, 4); //Reset portB outpus and reseting count and setting max_value
	Xil_Out32(Histo_Enable_reg, 1); //Counter rst_signal ready
	return XST_SUCCESS;
}

u32 Histo_Get_Curr_Counts(){
	return Xil_In32(histo_curr_clk_count);
}


void Histo_init_count(){
	Xil_Out32(Histo_Enable_reg,3);
}

void Histo_pause_count(){
	Xil_Out32(Histo_Enable_reg,1);
}

int Histo_is_done(){
	u32 din=Xil_In32(histo_done_signal);
	return din>>31;
}

int Histo_rfm(u32 *trans_buf){ //Read from memory
	int status=Histo_is_done();
	xil_printf("Status %d \n\r",status);
	if (status!=1){
		xil_printf("Not Done \n\r");
		return XST_FAILURE;
	}
	else{
		for (int addr=0; addr<=MEMORY_BINS; addr+=4){
			trans_buf[addr/4]=Xil_In32(comblock_TDPR_addr+addr);
//			xil_printf("Address %x, value %d \n\r",comblock_TDPR_addr+addr, trans_buf[addr/4]);
		}
		xil_printf("Done \n\r");
		return XST_SUCCESS;
	}

}

void clean_TDPR(){
	for (int addr=0; addr<=MEMORY_BINS; addr+=4){
//		xil_printf("%d \n\r",addr);
		Xil_Out32(comblock_TDPR_addr+addr,0);
//		xil_printf("%d \n\r",addr);

	}
}
