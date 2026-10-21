/* 
 * File:   timer.h
 * Author: pedro
 *
 * Created on October 19, 2026, 11:32 PM
 */
#ifndef TIMER_H
#define TIMER_H

#include <stdint.h>
#include <time.h>

extern volatile time_t system_seconds;

void TIMER_Initialize(void);
time_t TIMER_GetSeconds(void);

#endif /* TIMER_H */

