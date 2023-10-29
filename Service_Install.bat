@echo off
setlocal enabledelayedexpansion

echo Installing Service
OptixServiceInstaller install

echo Starting Service
OptixServiceInstaller start

pause .