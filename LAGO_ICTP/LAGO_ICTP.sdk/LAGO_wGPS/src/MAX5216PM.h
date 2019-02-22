#ifndef	  MAX5216PM_H_
#define __MAX5216PM_H_

//#include "SPI_PL.h"
#include "comblock_parameters.h"
#include "xparameters.h"
#include "xil_types.h"
#include "global.h"

#ifdef DAC_MAX5216

//Setting DAC definitions
#define SPI_SEND 1
#define SPI_FLANK_ 2
#define SPI_LDAC 4

#define SPI_PL_DATA     comblock_reg_block_out_4
#define SPI_PL_CONFIG	comblock_reg_block_out_5
#define SPI_PL_DEVICE	comblock_reg_block_out_6

#define init_config ((!SPI_SEND)|!SPI_FLANK_|!SPI_LDAC)
#define config_byte (0x10<<8)



int set_DAC_value(u8 device, u8 config, u16 value);

int dac_init();

#endif

#endif
