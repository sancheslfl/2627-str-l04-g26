/* 
 * File:   leds.h
 * Author: pedro
 *
 * Created on October 19, 2026, 11:33 PM
 */

#ifndef LEDS_H
#define LEDS_H

#include <stdint.h>

void LEDS_Initialize(void);
void led_timer(uint8_t state);

#endif /* LEDS_H */

