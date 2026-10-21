
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

uint8_t PMON = 5;  // Monitoring period (s)
uint8_t TALA = 3;  // Alarm duration (s)
uint8_t ALAF = 0;  // Alarms enabled
int8_t ALAT = 25;  // Temperature threshold
uint8_t ALAL = 3;  // Luminosity threshold

volatile uint8_t ticks = 0;
volatile bool s1_pressed = false;
volatile bool s2_pressed = false;

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

void s2_isr(void)
{
    s2_pressed = true;
}

void main(void)
{
    uint8_t elapsed = 0;
    int8_t temperature;
    uint8_t luminosity;

    SYSTEM_Initialize();
    OpenI2C();

    clock_init();
    ui_init();
    alarm_init();

    TMR1_SetInterruptHandler(t1_isr);
    IOCBF4_SetInterruptHandler(s1_isr);
    IOCCF5_SetInterruptHandler(s2_isr);

    CPUDOZEbits.IDLEN = 1;  // idle mode

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

    ui_display(temperature, luminosity);

    while (1)
    {
        bool process_second = false;
        bool press_s1 = false;
        bool press_s2 = false;
        bool update_display = false;

        INTERRUPT_GlobalInterruptDisable();

        if (ticks == 0 && !s1_pressed && !s2_pressed)
        {
            SLEEP();
            NOP();
        }

        if (ticks > 0)
        {
            ticks--;
            process_second = true;
        }

        press_s1 = s1_pressed;
        press_s2 = s2_pressed;
        s1_pressed = false;
        s2_pressed = false;

        INTERRUPT_GlobalInterruptEnable();

        if (process_second)
        {
            ui_tick_1s();
            alarm_tick_1s();

            if (clock_take_alarm_event())
                trigger_alarm(CLOCK_TIME);

            if (PMON != 0 && ++elapsed >= PMON)
            {
                elapsed = 0;

                temperature = readTC74();
                luminosity = read_luminosity();

                bool temp_high =
                    is_temperature_above_threshold(temperature, ALAT);

                bool light_low =
                    is_below_luminosity_threshold(luminosity, ALAL);

                set_temperature_led(temp_high);
                set_luminosity_led(light_low);

                alarm_check(temp_high, light_low);
            }

            update_display = true;
        }

        if (press_s1 || press_s2)
        {
            // Simple button debounce
            __delay_ms(20);

            if (press_s1 && !S1_BUTTON_GetValue())
                ui_press_s1();

            if (press_s2 && !S2_BUTTON_GetValue())
                ui_press_s2();

            // Discard bouncing interrupts
            INTERRUPT_GlobalInterruptDisable();
            s1_pressed = false;
            s2_pressed = false;
            INTERRUPT_GlobalInterruptEnable();

            update_display = true;
        }

        if (update_display)
            ui_display(temperature, luminosity);
    }
}
