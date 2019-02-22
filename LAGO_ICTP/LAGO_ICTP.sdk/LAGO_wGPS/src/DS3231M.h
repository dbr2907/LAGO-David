/*
 * DS3231M.h
 *
 *  Created on: Jul 2, 2018
 *      Author: infolab
 */

#ifndef SRC_DS3231M_H_
#define SRC_DS3231M_H_

#include "xil_types.h"

#define DS3231M_addr 0xd0

#define DS3231M_seconds 0x00
#define DS3231M_minutes	0x01
#define DS3231M_hours	0x02

#define DS3231M_day		0x03
#define DS3231M_date	0x04
#define DS3231M_month	0x05
#define DS3231M_year	0x06

#define DS3231M_alarm1sec	0x07
#define DS3231M_alarm1min	0x08
#define DS3231M_alarm1hours 0x09
#define DS3231M_alarm1day	0x0a

#define DS3231M_alarm2min	0x0b
#define DS3231M_alarm2hours	0x0c
#define DS3231M_alarm2day	0x0d

#define DS3231M_control	0x0e
#define DS3231M_status	0x0f
#define DS3231M_aOff	0x10
#define DS3231M_TempMSB	0x11
#define DS3231M_TempLSB	0x12

void DS3231M_set_reg(u8 SlaveAdr, u8 regAdr, u8 val);
void DS3231M_set_mregs(u8 SlaveAdr, u8 *p, int len);
void DS3231M_rd_reg(u8 SlaveAdr, u8 regAdr, u8 *p, int len);

//TODO get_time, set_time, set_alarm, get_date, set_date, functions

#endif /* SRC_DS3231M_H_ */
