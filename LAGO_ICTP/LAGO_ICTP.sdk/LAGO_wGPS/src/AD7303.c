/*
 * AD7303.c
 *
 *  Created on: Nov 13, 2018
 *      Author: Ivan Morales
 */
#include "AD7303.h"
#include "xiicps.h"
#include "global.h"

#ifdef DAC_AD7303

int set_DAC_value(u8 device, u8 config, u16 value){
u32 data_val=((config<<8)+value);
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

	set_DAC_value(1,dac_config|AD7303_A_SHUTDOWN|AD7303_B_SHUTDOWN, 0); //Powering off DAC channels A & B
	set_DAC_value(1,dac_config, 0); //Powering on DAC and setting value to 0 (verify whether you choose channel A or B in AD7303.h)
	xil_printf("DAC AD7303 Channel A Ready! \n\r");

	return 0;
}

#endif
