/*
 * DS3231M.c
 *
 *  Created on: Jul 3, 2018
 *      Author: infolab
 */
#include "xil_types.h"
#include "xil_printf.h"
#include "IIC_RW.h"

void DS3231M_set_reg(u8 SlaveAdr, u8 regAdr, u8 val){
	u8 iic_dat[2];
	xil_printf("Writing in reg %x... ",regAdr);
	iic_dat[0]=regAdr;
	iic_dat[1]=val;


	int state=xI2C_Write(I2C_DeviceNr, SlaveAdr, &iic_dat, 2);
	if (state<1){
		xil_printf("Failed \n\r");
	}
	else{
		xil_printf("Done \n\r");
	}

}

void DS3231M_set_mregs(u8 SlaveAdr, u8 *p, int len){
	xil_printf("Writing... ");
	int state=xI2C_Write(I2C_DeviceNr, SlaveAdr, p, len);
	if (state<1){
		xil_printf("Failed \n\r");
	}
	else{
		xil_printf("Done \n\r");
	}
}

void DS3231M_rd_reg(u8 SlaveAdr, u8 regAdr, u8 *p, int len){
	xil_printf("Reading reg %x... ",regAdr);

	int state=xI2C_WrRd (I2C_DeviceNr, SlaveAdr, &regAdr, 1,  p, len);
	if (state<1){
		xil_printf("Failed \n\r");
	}
	else{
		xil_printf("Done \n\r");
	}
}
