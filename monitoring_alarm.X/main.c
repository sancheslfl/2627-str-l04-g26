
#include "mcc_generated_files/mcc.h"
#include "I2C/i2c.h"

#include "temperature.h"
#include "luminosity.h"
#include "leds.h"
#include "alarm.h"
#include "clock.h"
#include "ui.h"

#include <stdint.h>
#include <stdbool.h>

uint8_t PMON = 5;   // Sensor monitoring period (s)
uint8_t TALA = 3;   // PWM alarm duration (s)
uint8_t ALAF = 1;   // Alarms enabled/disabled
int8_t ALAT = 25;   // Temperature threshold
uint8_t ALAL = 3;   // Luminosity threshold

volatile uint8_t ticks = 0;
volatile bool s1_pressed = false;

void t1_isr(void)
{
    CLOCK_LED_Toggle();
    clock_tick_1s();

    if (ticks < 255)
        ticks++;
}

void s1_isr(void)
{
    s1_pressed = true;
}

void main(void)
{
    uint8_t elapsed = 0;
    int8_t temperature = 0;
    uint8_t luminosity = 0;

    SYSTEM_Initialize();
    OpenI2C();

    clock_init();
    ui_init();
    alarm_init();

    TMR1_SetInterruptHandler(t1_isr);
    IOCBF4_SetInterruptHandler(s1_isr);

    CPUDOZEbits.IDLEN = 1;  // Idle mode

    INTERRUPT_PeripheralInterruptEnable();
    INTERRUPT_GlobalInterruptEnable();

    temperature = readTC74();
    luminosity = read_luminosity();

    set_temperature_led(
        is_temperature_above_threshold(temperature, ALAT)
    );

    set_luminosity_led(
        is_below_luminosity_threshold(luminosity, ALAL)
    );

    ui_display_normal(
        temperature, luminosity, alarm_flags, ALAF != 0
    );

    while (1)
    {
        bool process_second = false;
        bool acknowledge = false;

        INTERRUPT_GlobalInterruptDisable();

        if (ticks == 0 && !s1_pressed)
        {
            SLEEP();
            NOP();
        }

        if (ticks > 0)
        {
            ticks--;
            process_second = true;
        }

        if (s1_pressed)
        {
            s1_pressed = false;
            acknowledge = true;
        }

        INTERRUPT_GlobalInterruptEnable();

        if (acknowledge)
            alarm_acknowledge();

        if (process_second)
        {
            alarm_tick_1s();

            if (clock_take_alarm_event())
                trigger_alarm(CLOCK_TIME);

            if (PMON != 0 && ++elapsed >= PMON)
            {
                elapsed = 0;

                temperature = readTC74();
                luminosity = read_luminosity();

                bool temp_high =
                    is_temperature_above_threshold(
                        temperature, ALAT
                    );

                bool light_low =
                    is_below_luminosity_threshold(
                        luminosity, ALAL
                    );

                set_temperature_led(temp_high);
                set_luminosity_led(light_low);

                alarm_check(temp_high, light_low);
            }
        }

        // Refresh LCD every second or after S1
        if (process_second || acknowledge)
        {
            ui_display_normal(
                temperature, luminosity,
                alarm_flags, ALAF != 0
            );
        }
    }
}
