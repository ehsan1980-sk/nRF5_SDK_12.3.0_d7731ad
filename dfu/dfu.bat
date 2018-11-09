@echo off
echo generate bootloader settings hex
nrfutil.exe settings generate --family NRF51 --application application.hex --application-version 3 --bootloader-version 2 --bl-settings-version 1 --no-backup bootloader_settings.hex

echo merge softdevice application and booleader hex file
mergehex -m application.hex s130_nrf51_2.0.1_softdevice.hex bootloader.hex -o tmp.hex
mergehex -m tmp.hex bootloader_settings.hex -o production.hex
del tmp.hex
