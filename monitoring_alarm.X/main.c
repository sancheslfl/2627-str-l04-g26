#include "mcc_generated_files/mcc.h"
#include "I2C/i2c.h"

#include "temperature.h"
#include "leds.h"

#define ALAT 30

void main(void)
{
    int8_t temperature;
    bool above_threshold;

    SYSTEM_Initialize();

    OpenI2C();

    while (1)
    {
        temperature = readTC74();

        above_threshold =
            is_temperature_above_threshold(temperature, ALAT);

        set_temperature_led(above_threshold);

        __delay_ms(1000);
    }
}