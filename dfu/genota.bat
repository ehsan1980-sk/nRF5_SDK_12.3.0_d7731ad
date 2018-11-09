@echo off
rem --sd-req get the value from nRFgo stdio
echo generate the application ota zip file
nrfutil pkg generate --hw-version 51 --sd-req 0x87 --application-version 3 --application application.hex --key-file private.pem ota.zip
