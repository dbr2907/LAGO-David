/*
 * IIC_RW.c
 *
 *  Created on: Jan 22, 2018
 *      Author: infolab
 */
#include "xiicps.h"
#include "IIC_RW.h"


int xI2C_Init (int I2cDevId)
{
int Status;
 XIicPs_Config *Config;

	Config = XIicPs_LookupConfig (I2cDevId);
	if (Config == NULL)
	{
		xil_printf ("Error: I2C: No PS7_I2C Device found \n\r");
		return 0;
	}

	Status = XIicPs_CfgInitialize (&I2c[I2cDevId],     Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		xil_printf ("Error: I2C: Not PS7_I2C Config \n\r");
		return 0;
	}

	XIicPs_SetSClk (&I2c[I2cDevId], IIC_SCLK_RATE);

	while (XIicPs_BusIsBusy(&I2c[I2cDevId])) { 	}   // Empty buffer
	xil_printf("I2C IF Ready\n\r");
	return (1);
}

int xI2C_WrRd (int I2cDevId, int SlaveAdr, unsigned char *p, int len, unsigned char *pRd, int lenRd)
{
    int Status;

	Status = XIicPs_MasterSendPolled (&I2c[I2cDevId], p, len, SlaveAdr>> 1 );
	if (Status != XST_SUCCESS)
	{
		xil_printf ("Error: I2C: Send not OK\n");
		return (0);
	}

	while (XIicPs_BusIsBusy(&I2c[I2cDevId]));


	Status = XIicPs_MasterRecvPolled (&I2c[I2cDevId], pRd, lenRd, SlaveAdr >> 1);
	if (Status != XST_SUCCESS)
	{
		xil_printf ("Error: I2C: Read not OK \n");
		return (0);
	}
	while (XIicPs_BusIsBusy(&I2c[I2cDevId]));


	return (1);
}

int xI2C_Write (int I2cDevId, int SlaveAdr, unsigned char *p, int len)
{
int Status;
	Status = XIicPs_MasterSendPolled (&I2c[I2cDevId], p, len, SlaveAdr >> 1);
	if (Status != XST_SUCCESS)
	{
		xil_printf ("Error: I2C: Write not OK [%x]\n", SlaveAdr);
		return (0);
	}
	while (XIicPs_BusIsBusy (&I2c[I2cDevId]));
	return (1);
}

int xI2C_Rd (int I2cDevId, int SlaveAdr, unsigned char *p, int len, unsigned char *pRd, int lenRd)
{
    int Status;

   if (XIicPs_BusIsBusy(&I2c[I2cDevId])){
	   xil_printf("Error: I2C: Device is busy \n");
	   return(0);
   }


	Status = XIicPs_MasterRecvPolled (&I2c[I2cDevId], pRd, lenRd, SlaveAdr >> 1);
	if (Status != XST_SUCCESS)
	{
		xil_printf ("Error: I2C: Read not OK \n");
		return (0);
	}
	while (XIicPs_BusIsBusy(&I2c[I2cDevId]));


	return (1);
}




