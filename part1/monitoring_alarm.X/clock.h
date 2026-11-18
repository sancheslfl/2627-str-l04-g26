#ifndef CLOCK_H
#define CLOCK_H

#include <stdint.h>
#include <stdbool.h>

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
ClockTime clock_get_alarm_time(void);

bool clock_take_alarm_event(void);

#endif