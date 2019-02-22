/*
 * TempPress.c
 *
 *  Created on: Jan 22, 2018
 *      Author: infolab
 */
#include "TempPress.h"
#include "IIC_RW.h"
#include "math.h"
#include "MAX5216PM.h"
#include "AD7303.h"

float ADT420_read(int I2cDevId, int SlaveAdr){
					  unsigned char adr = 0x00;
					  unsigned char  data[2]={0,0};
					  float temp;

					  int state=xI2C_WrRd(I2cDevId, SlaveAdr ,&adr, 1, &data, 2);
					  if (state<1){
					  	  xil_printf("i2c temp \n\r");
					  }
					  int t = ( (unsigned char)data[0]<<8 ) + (unsigned char)data[1];
					  if( ( data[0] >> 7 ) == 0 )
					     {
					      if( t & (1<<13) )
					       temp = ( (float)t - 8192. ) / 128; //
					      else
					        temp = (float)t / 128;
					     }
					  return(temp);
}

void MS5611_setD1(int I2cDevId, int SlaveAdr){
	unsigned char adrD1 = MS5611_D1adr;
	xI2C_Write(I2cDevId, SlaveAdr, &adrD1,1);
}

void MS5611_setD2(int I2cDevId, int SlaveAdr){
	unsigned char adrD2 = MS5611_D2adr;
	xI2C_Write(I2cDevId, SlaveAdr, &adrD2,1);
}

unsigned long MS5611_getADC(int I2cDevId, int SlaveAdr){
	unsigned char adr_ADC= MS5611_ADCadr;
	unsigned char  data[3];
	int state=xI2C_WrRd (I2cDevId, SlaveAdr, &adr_ADC, 1, data, 3);
	if(state<1){
		xil_printf("Error i2c in T \n\r");
	}
	unsigned long D= 0x00ffffff & ((data[0] << 16) |(data[1] << 8) | data[2]);
	return(D);
}

double MS5611_getTemp(unsigned long D2){
	long dT=D2-Calibs.dig_C5*pow(2,8);
	double T=((dT/pow(2,23))*Calibs.dig_C6+2000)/100;
	if (T<20)
		return(T-(pow(dT,2)/pow(2,31))/100);
	else
	return (T);
}

double MS5611_getPressure(unsigned long D1, unsigned long D2, double T){
	double OFF2, SENS2;

	if(T < 20)
	{
		OFF2=5*pow((T-2000),2)/2;
		SENS2=5*pow((T-2000),2)/4;
		if (T<-15)
		{
			OFF2=OFF2+7*pow((T+1500),2);
			SENS2=SENS2+11*pow((T+1500),2)/2;
		}
	}
	else
	{
		OFF2=0;
		SENS2=0;
	}

	long dT=D2-Calibs.dig_C5*pow(2,8);
	double OFF=((dT/pow(2,7))*Calibs.dig_C4+Calibs.dig_C2*pow(2,16))-OFF2;
	double SENS=((dT/pow(2,8))*Calibs.dig_C3+Calibs.dig_C1*pow(2,15))-SENS2;

	double P=(((D1*SENS)/pow(2,21)-OFF)/pow(2,15))/100;
	//printf("p=: %f,dT=: %d, D1=: %d, D2=: %d, T= %f, T1= %f, OFF2=%f, OFF=%f,SENS2= %f,SENS= %f  \n\r",P,dT,D1, D2, T,T1, OFF2, OFF, SENS2, SENS);
	return (P);

}

void pack_buffer(unsigned char* trans_buf,double T, double P, float Temp){

	unsigned char *pt= (unsigned char*)&T;
		trans_buf[0] = pt[7];
		trans_buf[1] = pt[6];
		trans_buf[2] = pt[5];
		trans_buf[3] = pt[4];
		trans_buf[4] = pt[3];
		trans_buf[5] = pt[2];
		trans_buf[6] = pt[1];
		trans_buf[7] = pt[0];

	unsigned char *pp= (unsigned char*)&P;
		trans_buf[8] = pp[7];
		trans_buf[9] = pp[6];
		trans_buf[10] = pp[5];
		trans_buf[11] = pp[4];
		trans_buf[12] = pp[3];
		trans_buf[13] = pp[2];
		trans_buf[14] = pp[1];
		trans_buf[15] = pp[0];

	unsigned char *ptemp= (unsigned char*)&Temp;
		trans_buf[16] = ptemp[3];
		trans_buf[17] = ptemp[2];
		trans_buf[18] = ptemp[1];
		trans_buf[19] = ptemp[0];
	}

void readAllNpack(unsigned char* trans_buf){
	MS5611_setD2(I2C_DeviceNr, MS5611_addr);
	for(int i=0; i<10000000; i++);
	unsigned long D2=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
	MS5611_setD1(I2C_DeviceNr, MS5611_addr);
	for(int i=0; i<10000000; i++);
	unsigned long D1=MS5611_getADC(I2C_DeviceNr, MS5611_addr);
	float temp=ADT420_read(I2C_DeviceNr, ADT420_addr);
	double T=MS5611_getTemp(D2);
	double P=MS5611_getPressure(D1, D2,T);
	pack_buffer(trans_buf, T, P, temp);
}

void dac_funct(double T, double P, float Temp, int adac){
	u16 value;
	if (adac==1){
		int V=v0*(1+0.5*(P/p0*(t0)/(Temp+273.15)-1));
		value=hv_to_dac(V);
//		xil_printf("V is %d, DAC value set to: %d \n\r",V, value);
	}
	else{
		value=hv_to_dac(v0);
//		xil_printf("V is %d not autocorrected, DAC value set to: %d \n\r",v0, value);
	}
#ifdef DAC_MAX5216
	set_DAC_value(1,1,value);
#endif

#ifdef DAC_AD7303
	set_DAC_value(1, dac_config, value);
#endif

}

void set_dac_init(u32 V, double P, float Temp){
	t0=Temp;
	v0=V;
	p0=P;
}

u16 hv_to_dac(int V){
	if ((V>HVmax) && (V<HVmin)){
		xil_printf("V must be in range of HVmax and HVmin");
		return 0;
	}
	else{
		//u16 y;
		//y= (u16) (DACrange*((float)V/(HVmax-HVmin))-1);
		//return y;
		return (u16) (DACrange*((float)V/(HVmax-HVmin))-1);
	}
}

