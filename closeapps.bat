@echo off

:: Close audio player
nircmd win close ititle foobar2000

:: Unmount USB drive M:
cd c:\bert\tools\removedrive\x64
removedrive M:

:: If drive not found, move on
if errorlevel 2 goto end

:: If drive found and eject failed,
:: retry in a loop
if errorlevel 1 goto error

:: Eject succeeded, move on
goto end

:error

color 4F

echo ################################################
echo #                                              #
echo #                                              #
echo #              Failed to eject M:              #
echo #                                              #
echo #                                              #
echo #          Try closing some documents          #
echo #                                              #
echo #                                              #
echo ################################################

removedrive M: -L

color 07

:end

nircmd win close alltop

