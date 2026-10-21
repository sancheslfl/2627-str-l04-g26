/* 
 * File:   timer.c
 * Author: pedro
 *
 * Created on October 19, 2026, 11:32 PM
 */

#include "timer.h"
#include "mcc_generated_files/mcc.h"
#include "mcc_generated_files/tmr1.h"
volatile time_t system_seconds = 0;

static void t1_isr(void) 
{
    IO_RA7_Toggle();
    system_seconds++;
}

void TIMER_Initialize(void)
{
    TMR1_SetInterruptHandler(t1_isr);
}

time_t TIMER_GetSeconds(void)
{
    return system_seconds;
}

