
#ifndef RECORDS_H
#define RECORDS_H

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    uint8_t hours;
    uint8_t minutes;
    uint8_t seconds;
    int8_t temperature;
    uint8_t luminosity;
} SensorRecord;

typedef enum {
    RECORD_TEMPERATURE_MAX,
    RECORD_TEMPERATURE_MIN,
    RECORD_LUMINOSITY_MAX,
    RECORD_LUMINOSITY_MIN
} RecordType;

void records_reset(void);
void records_update(int8_t temperature, uint8_t luminosity);
bool records_get(RecordType type, SensorRecord *record);

#endif