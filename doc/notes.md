## Notes for development

```
Enabling FatFs
Uncomment #define BUILD_FATFS in user_config.h.

SD Card connection

CK, CLK, SCLK to pin5 / GPIO14
DO, DAT0, MISO to pin 6 / GPIO12
DI, CMD, MOSI to pin 7 / GPIO13
CS, DAT3, SS to pin 8 / GPIO15 recommended
VCC, VDD to 3V3 supply
VSS, GND to common ground

```


use attiny to drive indicator led ? to use blink etc...