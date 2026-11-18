#ifndef TEMPERATURE_H
#define TEMPERATURE_H

#include <stdbool.h>
#include <stdint.h>

int8_t readTC74(void);

bool is_temperature_above_threshold(
    int8_t temperature,
    int8_t threshold
);

#endif