
#include "mcc_generated_files/mcc.h"
#include "I2C/i2c.h"

#include "temperature.h"
#include "luminosity.h"
#include "leds.h"

#define ALAT 30
#define ALAL 3

void main(void)
{
    int8_t temperature;
    uint8_t luminosity;

    SYSTEM_Initialize();
    OpenI2C();

    while (1)
    {
        temperature = readTC74();
        luminosity = read_luminosity();

        set_temperature_led(
            is_temperature_above_threshold(temperature, ALAT)
        );

        set_luminosity_led(
            is_below_luminosity_threshold(luminosity, ALAL)
        );

        __delay_ms(1000);
    }
}