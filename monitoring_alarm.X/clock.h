#ifndef CLOCK_H
#define CLOCK_H

#include <stdint.h>

typedef struct {
    uint8_t hours;
    uint8_t minutes;
    uint8_t seconds;
} ClockTime;

void clock_init(void);
void clock_tick_1s(void);

ClockTime clock_get_time(void);
void clock_set_time(ClockTime time);
void clock_set_alarm_time(ClockTime time);

bool clock_take_alarm_event(void);

#endif