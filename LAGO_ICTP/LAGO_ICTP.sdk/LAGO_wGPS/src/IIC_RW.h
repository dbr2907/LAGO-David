/*
 * IIC_RW.h
 *
 *  Created on: Jan 22, 2018
 *      Author: infolab
 */

#ifndef SRC_IIC_RW_H_
#define SRC_IIC_RW_H_

#include "xiicps.h"
#include "IIC_RW.h"
#define I2C_DeviceNr        0
#define IIC_SCLK_RATE		20000
//unsigned char trans_buf[2048] = {0};

XIicPs I2c[2];			// handles for both I2C Devices


int xI2C_Init (int I2cDevId);
int xI2C_WrRd (int I2cDevId, int SlaveAdr, unsigned char *p, int len, unsigned char *pRd, int lenRd);
int xI2C_Write (int I2cDevId, int SlaveAdr, unsigned char *p, int len);
int xI2C_Rd (int I2cDevId, int SlaveAdr, unsigned char *p, int len, unsigned char *pRd, int lenRd);



#endif /* SRC_IIC_RW_H_ */
