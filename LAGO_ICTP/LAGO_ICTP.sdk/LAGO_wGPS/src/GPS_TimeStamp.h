/*
 * GPS_TimeStamp.h
 *
 *  Created on: 21 feb. 2019
 *      Author: Dbr
 */



#ifndef SRC_GPS_TIMESTAMP_H_
#define SRC_GPS_TIMESTAMP_H_

extern u8 Time[6];
extern u8 Date[8];
void GetTimeStamp(void);
void TimeStampPrint(void);


#endif /* SRC_GPS_TIMESTAMP_H_ */
