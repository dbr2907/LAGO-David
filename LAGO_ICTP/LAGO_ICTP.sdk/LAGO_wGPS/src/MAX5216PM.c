/*
 * MAX5216PM.c
 *
 *  Created on: Jan 9, 2018
 *      Author: kbo
 */
#include "MAX5216PM.h"
#include "xiicps.h"

#ifdef DAC_MAX5216

int set_DAC_value(u8 device, u8 config, u16 value){
u32 data_val=((config<<16)+value)<<6;
u32 debug=0;
//	SPI_PL_mWriteReg(XPAR_SPI_PL_0_S00_AXI_BASEADDR, SPI_PL_DEVICE, device); //Selecting device
//	xil_printf("DAC_DEBUG: SPI_PL_DEVICE %x ",device);
	Xil_Out32(SPI_PL_DEVICE, device);
//	xil_printf("done.\n\r");
//	SPI_PL_mWriteReg(XPAR_SPI_PL_0_S00_AXI_BASEADDR, SPI_PL_DATA, data_val);
//	xil_printf("DAC_DEBUG: SPI_PL_DATA %x ",data_val);
	Xil_Out32(SPI_PL_DATA, data_val);
//	xil_printf("done.\n\r");
//	SPI_PL_mWriteReg(XPAR_SPI_PL_0_S00_AXI_BASEADDR, SPI_PL_CONFIG, (init_config|SPI_SEND));
	debug=(init_config|SPI_SEND);
//	xil_printf("DAC_DEBUG: WRITING SPI_PL_CONFIG %x ",debug);
	Xil_Out32(SPI_PL_CONFIG, (init_config|SPI_SEND));
//	xil_printf("done.\n\r");
//	SPI_PL_mWriteReg(XPAR_SPI_PL_0_S00_AXI_BASEADDR, SPI_PL_CONFIG, (init_config|!SPI_SEND));
	debug=(init_config|!SPI_SEND);
//	xil_printf("DAC_DEBUG: WRITING SPI_PL_CONFIG %x ",debug);
	Xil_Out32(SPI_PL_CONFIG, (init_config|!SPI_SEND));
//	xil_printf("done.\n\r");
	return 0;
}
int dac_init(){
//	SPI_PL_mWriteReg(XPAR_SPI_PL_0_S00_AXI_BASEADDR, SPI_PL_CONFIG, init_config); //Initial configuration
	Xil_Out32(SPI_PL_CONFIG, init_config); //Initial configuration
	set_DAC_value(1,2,0);//Powering off the DAC
	set_DAC_value(1,1,0);//Powering on the DAC and setting the value to 0
	xil_printf("DAC MAX5216PM Ready \n\r");
	return 0;

}

#endif
