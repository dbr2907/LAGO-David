/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include <stdio.h>
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xuartlite_l.h"
#include "xgpio.h"

#define TIMER_ID	1
#define DELAY_10_SECONDS	10000UL
#define DELAY_1_SECOND		1000UL
#define TIMER_CHECK_THRESHOLD	9
#define UARTLITE_BASEADDR XPAR_UARTLITE_0_BASEADDR

static void TimeStamp( void *pvParameters );
static void P2Task( void *pvParameters );


static TaskHandle_t Print1H;
static TaskHandle_t Print2H;


int main( void ){
	XGpio Fix;
	int Fix_F=0;
	xil_printf("Initializing Peripherals\r\n");
	XGpio_Initialize(&Fix, XPAR_FIX_DEVICE_ID);

	xTaskCreate(TimeStamp,
				(const char *) "TimeStamp",
				configMINIMAL_STACK_SIZE,
				NULL,
				tskIDLE_PRIORITY+1,
				&Print1H );

	xTaskCreate(P2Task,
				(const char *) "Print2",
				configMINIMAL_STACK_SIZE,
				NULL,
				tskIDLE_PRIORITY + 1,
				&Print2H );


	xil_printf("Waiting for Fix from GPS\r\n");
	while(Fix_F!=1){
		Fix_F = XGpio_DiscreteRead(&Fix, 1);
	}
	xil_printf("Fix Obtanied from GPS\r\n");
	vTaskStartScheduler();
	for( ;; );
}

/*-----------------------------------------------------------*/
static void TimeStamp( void *pvParameters ){
	u8 token, junk;
	u8 NMEAType[6],DateRaw[6];
	u8 Time[6],Date[8];

	while(1){
		token= XUartLite_RecvByte(UARTLITE_BASEADDR);
		if(token==36){ //Searching for char $, start of NMEA line.
			for(int i=0; i<6;i++){NMEAType[i] = XUartLite_RecvByte(UARTLITE_BASEADDR);}
			if(NMEAType[4]==67){ //verifying if char=A, as time is exactly after this.
				int j=0;
				xil_printf("Time: ");
				for(int i=0; i<6;i++){
						Time[i] = XUartLite_RecvByte(UARTLITE_BASEADDR);
						xil_printf("%c", Time[i]);
				}

				xil_printf(" Date: ");
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

				for(int l=0; l<8;l++){xil_printf("%c", Date[l]);}
				xil_printf("\r\n");
			}
		}
	}
}
/*-----------------------------------------------------------*/
static void P2Task( void *pvParameters ){
	const TickType_t x1second = pdMS_TO_TICKS(DELAY_1_SECOND);
	for(;;){
		print("Tarea 2\r\n");
		vTaskDelay( x1second );
	}
}
/*-----------------------------------------------------------*/
