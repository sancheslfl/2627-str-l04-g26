#ifndef UI_H
#define UI_H

#include <stdint.h>
#include <stdbool.h>

void ui_init(void);
void ui_display_normal(int8_t temperature, uint8_t luminosity,
                    uint8_t alarm_flags, bool alarms_enabled);

#endif