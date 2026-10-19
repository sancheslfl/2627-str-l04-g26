#include "leds.h"
#include "mcc_generated_files/mcc.h"

void set_temperature_led(bool enable)
{
    if (enable) {
        TEMP_LED_SetHigh();
    } else {
        TEMP_LED_SetLow();
    }
}