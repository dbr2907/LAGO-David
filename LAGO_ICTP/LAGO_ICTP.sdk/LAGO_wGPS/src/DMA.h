/*
 * DMA.h
 *
 *  Created on: Feb 20, 2017
 *      Author: Kasun
 */

#ifndef SRC_DMA_H_
#define SRC_DMA_H_

#include <stdio.h>
//#include "platform.h"
#include "xil_printf.h"
#include "xaxidma.h"
#include "xparameters.h"

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

////#define MEM_BASE_ADDR		(XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x1000000)
#define MEM_BASE_ADDR		(XPAR_PS7_DDR_0_S_AXI_BASEADDR + 0x10000000)
//
//#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00300000)
////#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x004FFFFF)

#define	TRIGGER_GEN_BASEADDR	XPAR_COMBLOCK_PL_DMA_OSCILOSCOPE_AXI_TRIGGER_GEN_M4_0_BASEADDR
#define TRIG_COMPLETE_READ		TRIGGER_GEN_BASEADDR + 0*4
#define TRIG					TRIGGER_GEN_BASEADDR + 1*4
#define TRIG_LEVEL				TRIGGER_GEN_BASEADDR + 2*4
#define TRIG_EDGE_RISING		TRIGGER_GEN_BASEADDR + 3*4
#define DELTA					TRIGGER_GEN_BASEADDR + 4*4

#define PACKET_LENGTH_BASEADDR	XPAR_GPIO_0_BASEADDR

#define MAX_PKT_LEN_WORDS	1024*32					// 1020*2 //1024*32
#define MAX_PKT_LEN			MAX_PKT_LEN_WORDS*4			// actual mem locations each 8 bit

#define ETH_PACK_SIZE		1024*4*32						//32 bit packets

#define NUM_ECHOS			MAX_PKT_LEN_WORDS/ETH_PACK_SIZE

#define TEST_START_VALUE	0xC

#define NUMBER_OF_TRANSFERS	1

int n;

/************************** Function Prototypes ******************************/

int XAxiDma_SimplePollExample(u16 DeviceId);
static int CheckData(void);
int DMA_Transfer(void);

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */
XAxiDma AxiDma;

#endif /* SRC_DMA_H_ */
