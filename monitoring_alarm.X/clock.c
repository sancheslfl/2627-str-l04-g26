#include "mcc_generated_files/mcc.h"
#include "clock.h"

static volatile ClockTime current_time;
static volatile ClockTime alarm_time;
static volatile bool clock_alarm_pending = false;

static bool clock_time_valid(ClockTime time)
{
    return time.hours < 24 &&
           time.minutes < 60 &&
           time.seconds < 60;
}

void clock_init(void)
{
    current_time.hours = 0;
    current_time.minutes = 0;
    current_time.seconds = 0;

    alarm_time.hours = 12;
    alarm_time.minutes = 0;
    alarm_time.seconds = 0;

    clock_alarm_pending = false;
}

// called by Timer1 every second
void clock_tick_1s(void)
{
    if (++current_time.seconds == 60)
    {
        current_time.seconds = 0;

        if (++current_time.minutes == 60)
        {
            current_time.minutes = 0;

            if (++current_time.hours == 24)
                current_time.hours = 0;
        }
    }

    if (current_time.hours == alarm_time.hours &&
        current_time.minutes == alarm_time.minutes &&
        current_time.seconds == alarm_time.seconds)
    {
        clock_alarm_pending = true;
    }
}

ClockTime clock_get_time(void)
{
    ClockTime time;
    uint8_t gie = INTCONbits.GIE;

    INTERRUPT_GlobalInterruptDisable();

    time.hours = current_time.hours;
    time.minutes = current_time.minutes;
    time.seconds = current_time.seconds;

    if (gie)
        INTERRUPT_GlobalInterruptEnable();

    return time;
}

void clock_set_time(ClockTime time)
{
    if (!clock_time_valid(time))
        return;

    uint8_t gie = INTCONbits.GIE;

    INTERRUPT_GlobalInterruptDisable();

    current_time.hours = time.hours;
    current_time.minutes = time.minutes;
    current_time.seconds = time.seconds;

    if (gie)
        INTERRUPT_GlobalInterruptEnable();
}

void clock_set_alarm_time(ClockTime time)
{
    if (!clock_time_valid(time))
        return;

    uint8_t gie = INTCONbits.GIE;

    INTERRUPT_GlobalInterruptDisable();

    alarm_time.hours = time.hours;
    alarm_time.minutes = time.minutes;
    alarm_time.seconds = time.seconds;

    if (gie)
        INTERRUPT_GlobalInterruptEnable();
}

bool clock_take_alarm_event(void)
{
    uint8_t gie = INTCONbits.GIE;

    INTERRUPT_GlobalInterruptDisable();

    bool pending = clock_alarm_pending;
    clock_alarm_pending = false;

    if (gie)
        INTERRUPT_GlobalInterruptEnable();

    return pending;
}
