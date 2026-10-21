#include "mcc_generated_files/mcc.h"
#include "I2C/i2c.h"

#include "temperature.h"
#include "luminosity.h"
#include "leds.h"
#include "alarm.h"

#include <stdint.h>
#include <stdbool.h>

uint8_t PMON = 5;   // sensor monitoring period (s)
uint8_t TALA = 3;   // PWM alarm signal duration (s)
uint8_t ALAF = 0;   // enable or disable alarm
int8_t ALAT = 25;   // temperature limit
uint8_t ALAL = 3;   // luminosity limit

volatile uint8_t ticks = 0;
volatile bool s1_pressed = false;

void t1_isr(void)
{
    CLOCK_LED_Toggle();

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
    int8_t temperature;
    uint8_t luminosity;

    SYSTEM_Initialize();
    OpenI2C();
    alarm_init();

    TMR1_SetInterruptHandler(t1_isr);
    IOCBF4_SetInterruptHandler(s1_isr);

    // SLEEP instruction enters idle mode
    CPUDOZEbits.IDLEN = 1;

    INTERRUPT_PeripheralInterruptEnable();
    INTERRUPT_GlobalInterruptEnable();

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

        if (!process_second)
            continue;

        // Runs once per elapsed second
        alarm_tick_1s();

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
    }
}
