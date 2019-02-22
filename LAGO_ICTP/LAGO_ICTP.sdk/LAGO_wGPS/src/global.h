/*
 * global.h
 *
 *  Created on: Jan 16, 2018
 *      Author: infolab
 *
 *
 *
 *  Modified on: Nov 13, 2018
 *  	Author: Ivan Morales
 *
 *  Changelog:
 *  	- Added AD7303 SPI DAC Support
 *  	- AD7303 and previous DAC (MAX5216) code coexistence with defines
 */

#ifndef SRC_GLOBAL_H_
#define SRC_GLOBAL_H_

#define ENABLE_SENSORS
#define ENABLE_DAC
//#define ENABLE_RTCLK
#define ENABLE_GPS_RTC

/*Choose between MAX5216 and AD7303 DACs here*/

//#define DAC_MAX5216
#define DAC_AD7303




#endif /* SRC_GLOBAL_H_ */
