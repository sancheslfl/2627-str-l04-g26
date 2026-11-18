#ifndef ALARM_H
#define ALARM_H

#include <stdint.h>
#include <stdbool.h>

enum Alarm_Condition {
    CLOCK_TIME,
    TEMPERATURE,
    LUMINOSITY
};

extern uint8_t alarm_flags;

void alarm_init(void);
void trigger_alarm(enum Alarm_Condition condition);
void alarm_check(bool temp_high, bool light_low);
void alarm_tick_1s(void);
void alarm_acknowledge(void);

#endif
