#include "xuartlite_l.h"

#define UARTLITE_BASEADDR XPAR_UARTLITE_0_BASEADDR

u8 Time[6];
u8 Date[8];


void TimeStampPrint(void){
	xil_printf("Time: ");
	for(int i=0; i<6;i++){xil_printf("%c", Time[i]);}
	xil_printf(" Date: ");
	for(int j=0; j<8;j++){xil_printf("%c", Date[j]);}
	xil_printf("\r\n");
}

void GetTimeStamp(void){
	u8 token, junk;
	u8 NMEAType[6],DateRaw[6];
	int Bnd= 0;

	while(Bnd==0){
		token= XUartLite_RecvByte(UARTLITE_BASEADDR);
		if(token==36){ //Searching for char $, start of NMEA line.
			for(int i=0; i<6;i++){NMEAType[i] = XUartLite_RecvByte(UARTLITE_BASEADDR);}
			if(NMEAType[4]==67){ //verifying if char=A, as time is exactly after this.
				int j=0;
				for(int i=0; i<6;i++){
						Time[i] = XUartLite_RecvByte(UARTLITE_BASEADDR);
				}
				while(j<8){ //Finding 7 commas, as date is exactly after this.
						junk = XUartLite_RecvByte(UARTLITE_BASEADDR);
						if(junk==44){j++;}
				}

				for(int k=0; k<6;k++){DateRaw[k] = XUartLite_RecvByte(UARTLITE_BASEADDR);}
				//Arranging date to format.
				Date[0]=50;
				Date[1]=48;
				Date[2]=DateRaw[4];
				Date[3]=DateRaw[5];
				Date[4]=DateRaw[2];
				Date[5]=DateRaw[3];
				Date[6]=DateRaw[0];
				Date[7]=DateRaw[1];
				Bnd=1;

				xil_printf("TimeStamp Saved \n\r");
			}
		}
	}
}
