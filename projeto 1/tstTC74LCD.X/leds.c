/* 
 * File:   leds.c
 * Author: pedro
 *
 * Created on October 19, 2026, 11:33 PM
 */

#include "leds.h"
#include "mcc_generated_files/pin_manager.h"
#include <xc.h>

void LEDS_Initialize(void)
{
    // Garante que o pino começa em Low (0)
    IO_RA7_SetLow();
}

void led_timer(uint8_t state)
{
    if (state == 1) {
        IO_RA7_SetHigh(); // High
    } else {
        IO_RA7_SetLow(); // Low
    }
}
