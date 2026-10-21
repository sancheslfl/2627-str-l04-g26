#include "records.h"
#include "clock.h"

static SensorRecord records[4];
static bool records_valid = false;

void records_reset(void)
{
    records_valid = false;
}

void records_update(int8_t temperature, uint8_t luminosity)
{
    ClockTime time = clock_get_time();

    SensorRecord current = {
        time.hours,
        time.minutes,
        time.seconds,
        temperature,
        luminosity
    };

    if (!records_valid)
    {
        for (uint8_t i = 0; i < 4; i++)
            records[i] = current;

        records_valid = true;
        return;
    }

    if (temperature > records[RECORD_TEMPERATURE_MAX].temperature)
        records[RECORD_TEMPERATURE_MAX] = current;

    if (temperature < records[RECORD_TEMPERATURE_MIN].temperature)
        records[RECORD_TEMPERATURE_MIN] = current;

    if (luminosity > records[RECORD_LUMINOSITY_MAX].luminosity)
        records[RECORD_LUMINOSITY_MAX] = current;

    if (luminosity < records[RECORD_LUMINOSITY_MIN].luminosity)
        records[RECORD_LUMINOSITY_MIN] = current;
}

bool records_get(RecordType type, SensorRecord *record)
{
    if (!records_valid || type > RECORD_LUMINOSITY_MIN)
        return false;

    *record = records[type];
    return true;
}
