/*
 * Histogram.h
 *
 *  Created on: Jul 27, 2018
 *      Author: infolab
 */

#ifndef SRC_HISTOGRAM_H_
#define SRC_HISTOGRAM_H_

#include "comblock_parameters.h"
#include <stdio.h>
#include <stdlib.h>
#include "xil_io.h"

#define ADC_ctrl_reg0 	 comblock_reg_block_out_7
#define ADC_Decim_factor comblock_reg_block_out_3
#define Histo_Enable_reg comblock_reg_block_out_8 //Histo ctrl Reg
#define Histo_set_count_val comblock_reg_block_out_9 //Histo max cicles

#define ADC_CTRL_reg_out comblock_reg_block_in_3
#define histo_curr_clk_count comblock_reg_block_in_4
#define histo_done_signal comblock_reg_block_in_5

#define BRAM_DEVICE_ID	comblock_TDPR_addr

#define MEMORY_BINS	0xFFFFU

#define XST_SUCCESS                     0L
#define XST_FAILURE                     1L

int Histo_SetCounts(u32 val);

u32 Histo_Get_Curr_Counts(void);


void Histo_init_count(void);

void Histo_pause_count(void);

int Histo_is_done(void);

int Histo_rfm(u32 *trans_buf);

void clean_TDPR(void);

#endif /* SRC_HISTOGRAM_H_ */
