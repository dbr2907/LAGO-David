/*
 * TempPress.h
 *
 *  Created on: Jan 22, 2018
 *      Author: infolab
 */

#ifndef SRC_TEMPPRESS_H_
#define SRC_TEMPPRESS_H_

#include "IIC_RW.h"
#include "math.h"
#include "global.h"

struct
{
	unsigned short Manuf;
	unsigned short dig_C1;
	unsigned short dig_C2;

	unsigned short dig_C3;
  	unsigned short dig_C4;
  	unsigned short dig_C5;
  	unsigned short dig_C6;
  	unsigned short dig_CRC;

}Calibs;

#define ADT420_addr 0x90
#define MS5611_addr 0xEE

#define MS5611_D1adr 0x48
#define MS5611_D2adr 0x58
#define MS5611_ADCadr 0x00

#define BUF 2048

//Defining init values

float t0;
u32 v0;
double p0;
//unsigned long D1, D2; //esto lo puse yo

#define HVmax 2640
#define HVmin 0
#ifdef DAC_MAX5216
#define DACrange 65536 //MAX5216
#endif

#ifdef DAC_AD7303
#define DACrange 256 //AD7303
#endif



float ADT420_read(int I2cDevId, int SlaveAdr);

void MS5611_setD1(int I2cDevId, int SlaveAdr);
void MS5611_setD2(int I2cDevId, int SlaveAdr);
unsigned long MS5611_getADC(int I2cDevId, int SlaveAdr);
double MS5611_getTemp(unsigned long D2);
double MS5611_getPressure(unsigned long D1, unsigned long D2, double T);

void pack_buffer(unsigned char* trans_buf,double T, double P, float Temp);

void readAllNpack(unsigned char* trans_buf);
void dac_funct(double T, double P, float Temp, int adac);
void set_dac_init(u32 V, double P, float Temp);
u16 hv_to_dac(int V);
#endif /* SRC_TEMPPRESS_H_ */
