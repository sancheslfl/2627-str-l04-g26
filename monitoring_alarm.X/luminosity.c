#include "luminosity.h"
#include "mcc_generated_files/adcc.h"

uint8_t read_luminosity(void)
{
    uint16_t adc = ADCC_GetSingleConversion(channel_ANA0);
    return (uint8_t)(adc >> 7);
}

bool is_below_luminosity_threshold(uint8_t luminosity, uint8_t threshold)
{
    return luminosity < threshold;
}
