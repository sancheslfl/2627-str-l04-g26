#ifndef UI_H
#define UI_H

#include <stdint.h>

void ui_init(void);
void ui_press_s1(void);
void ui_press_s2(void);
void ui_tick_1s(void);
void ui_display(int8_t temperature, uint8_t luminosity);

#endif