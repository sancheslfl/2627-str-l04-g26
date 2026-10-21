
#include "mcc_generated_files/mcc.h"
#include "alarm.h"

// defined in main.c
extern uint8_t ALAF;
extern uint8_t TALA;

uint8_t alarm_flags = 0;
static uint8_t alarm_remaining = 0;

#define PWM_DUTY 500 // 50% if T2PR = 249

void alarm_init(void)
{
    PWM6_LoadDutyValue(0);
}

void trigger_alarm(enum Alarm_Condition condition)
{
    uint8_t bit = (uint8_t)(1U << condition);

    // alarms disabled or already triggered
    if (!ALAF || (alarm_flags & bit))
        return;

    alarm_flags |= bit;     // to remember which alarm occurred

    // start shared PWM signal
    alarm_remaining = TALA;
    PWM6_LoadDutyValue(TALA ? PWM_DUTY : 0);
}

void alarm_check(bool temp_high, bool light_low)
{
    if (temp_high)
        trigger_alarm(TEMPERATURE);

    if (light_low)
        trigger_alarm(LUMINOSITY);
}

void alarm_tick_1s(void)
{
    if (alarm_remaining > 0)
    {
        alarm_remaining--;

        if (alarm_remaining == 0)
            PWM6_LoadDutyValue(0);
    }
}

void alarm_acknowledge(void)
{
    alarm_flags = 0;
}
