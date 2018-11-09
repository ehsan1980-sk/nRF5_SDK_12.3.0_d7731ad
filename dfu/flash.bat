@echo off
echo eraseall for device

nrfjprog -f NRF51 --eraseall
echo program production.hex
nrfjprog -f NRF51 --program production.hex --verify
echo reset device
nrfjprog -f NRF51 --reset
