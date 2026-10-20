#ifndef LUMINOSITY_H
#define LUMINOSITY_H

#include <stdint.h>
#include <stdbool.h>

uint8_t read_luminosity(void);
bool is_below_luminosity_threshold(uint8_t luminosity, uint8_t threshold);

#endif
