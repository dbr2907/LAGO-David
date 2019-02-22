/*
 * DMA.c
 *
 *  Created on: Feb 20, 2017
 *      Author: Kasun
 */
#include "DMA.h"
int DMA_Transfer(void){
	int Status;
 //   init_platform();

//    Xil_Out32(PACKET_LENGTH_BASEADDR, MAX_PKT_LEN_WORDS);

    xil_printf("\r\n--- Entering main() --- \r\n");

    	/* Run the poll example for simple transfer */
    	Status = XAxiDma_SimplePollExample(DMA_DEV_ID);

    	if (Status != XST_SUCCESS) {

    		xil_printf("XAxiDma_SimplePollExample: Failed\r\n");
    		return XST_FAILURE;
    	}

    	xil_printf("XAxiDma_SimplePollExample: Passed\r\n");

    	xil_printf("--- Exiting main() --- \r\n");

    	xil_printf("RX_BUFFER_BASE = 0x%x\r\n", RX_BUFFER_BASE);

    	return XST_SUCCESS;
}


/******************************************************************************/
int XAxiDma_SimplePollExample(u16 DeviceId){
	XAxiDma_Config *CfgPtr;
	int Status;
	int Tries = NUMBER_OF_TRANSFERS;
	int Index;
//	u32 *TxBufferPtr;
	u32 *RxBufferPtr;
//	u32 Value;

//	TxBufferPtr = (u32 *)TX_BUFFER_BASE;
	RxBufferPtr = (u32 *)RX_BUFFER_BASE;

	/* Initialize the XAxiDma device.
	 */
	CfgPtr = XAxiDma_LookupConfig(DeviceId);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(&AxiDma)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode
	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DEVICE_TO_DMA);
//	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
//						XAXIDMA_DMA_TO_DEVICE);

//	Value = 0;

//	for(Index = 0; Index < MAX_PKT_LEN_WORDS; Index ++) {
//			TxBufferPtr[Index] = Value;
//			Value++;
//	}
	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((u32)RxBufferPtr, MAX_PKT_LEN);

	for(Index = 0; Index < Tries; Index ++) {


		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) RxBufferPtr, MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}

//		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBufferPtr,
//					MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

//		if (Status != XST_SUCCESS) {
//			return XST_FAILURE;
//		}

//		while (XAxiDma_Busy(&AxiDma,XAXIDMA_DMA_TO_DEVICE)) {
				/* Wait */
//		}
		while (XAxiDma_Busy(&AxiDma,XAXIDMA_DEVICE_TO_DMA)) {
				/* Wait */
		}

		n=0;
		Status = CheckData();
		if (Status != XST_SUCCESS) {
			return XST_FAILURE;
		}


	}
	/* Test finishes successfully
	 */
	return XST_SUCCESS;
}

/******************************************************************************/
static int CheckData(void){
	u32 *RxPacket;
	int Index = 0;
	int len = 1024;
	volatile u32 *Rx_k = *(volatile u32 (*)[ETH_PACK_SIZE])(RX_BUFFER_BASE+4*ETH_PACK_SIZE*n);


	RxPacket = (u32 *) RX_BUFFER_BASE;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
	Xil_DCacheInvalidateRange((u32)RxPacket, MAX_PKT_LEN);

	xil_printf("Data received: ");
	for(Index = 0; Index < 32; Index++) {
		xil_printf("0x%X ", (unsigned int)Rx_k[Index]);
	}
	xil_printf("\r\n");

	return XST_SUCCESS;
}



