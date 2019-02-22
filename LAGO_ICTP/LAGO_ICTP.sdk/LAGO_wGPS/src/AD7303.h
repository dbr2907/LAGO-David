#ifndef	  AD7303_H_
#define __AD7303_H_

//#include "SPI_PL.h"
#include "comblock_parameters.h"
#include "xparameters.h"
#include "xil_types.h"
#include "global.h"

//Comblock registers configuration
#define SPI_PL_DATA     comblock_reg_block_out_4
#define SPI_PL_CONFIG	comblock_reg_block_out_5
#define SPI_PL_DEVICE	comblock_reg_block_out_6

#ifdef DAC_AD7303

//Setting SPI Master definitions
#define SPI_SEND 1
#define SPI_FLANK_ 2
#define SPI_LDAC 4

//Setting AD7303 DAC definitions
#define AD7303_B_ENABLE 	0x04
#define AD7303_A_ENABLE 	!AD7303_B_ENABLE
#define AD7303_A_SHUTDOWN	0x08
#define AD7303_B_SHUTDOWN	0x10
#define AD7303_LDAC			0x20
#define AD7303_EXTERNAL_REF	0x80
#define AD7303_INTEFNAL_REF	!AD7303_EXTERNAL_REF


#define init_config ((!SPI_SEND)|!SPI_FLANK_|!SPI_LDAC)

//Choose which channels you want to enable by DISABLING the corresponding SHUTDOWN bit (Default A:ON|B:OFF)
#define dac_config (AD7303_A_ENABLE|!AD7303_A_SHUTDOWN|AD7303_B_SHUTDOWN|AD7303_LDAC|AD7303_INTEFNAL_REF)



int set_DAC_value(u8 device, u8 config, u16 value);

int dac_init();

#endif

#endif
