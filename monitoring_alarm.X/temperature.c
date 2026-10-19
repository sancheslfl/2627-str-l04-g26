#include "temperature.h"
#include "I2C/i2c.h"

int8_t readTC74(void)
{
    unsigned char value;

    do {
        IdleI2C();
        StartI2C(); IdleI2C();

        WriteI2C(0x9a | 0x00); IdleI2C();
        WriteI2C(0x01); IdleI2C();

        RestartI2C(); IdleI2C();
        WriteI2C(0x9a | 0x01); IdleI2C();

        value = ReadI2C(); IdleI2C();

        NotAckI2C(); IdleI2C();
        StopI2C();

    } while (!(value & 0x40));

    IdleI2C();

    StartI2C(); IdleI2C();

    WriteI2C(0x9a | 0x00); IdleI2C();
    WriteI2C(0x00); IdleI2C();

    RestartI2C(); IdleI2C();
    WriteI2C(0x9a | 0x01); IdleI2C();

    value = ReadI2C(); IdleI2C();

    NotAckI2C(); IdleI2C();
    StopI2C();

    return (int8_t)value;
}

bool is_temperature_above_threshold(
    int8_t temperature,
    int8_t threshold
)
{
    return temperature > threshold;
}