@echo off

vboxmanage startvm yeba

if errorlevel 1 goto error

goto end

:: retry in a loop
:error

cls
color 4F

echo ################################################
echo #                                              #
echo #                                              #
echo #              Failed to start VM              #
echo #                                              #
echo #                                              #
echo #      Waiting for drive M: to show up ...     #
echo #                                              #
echo #                                              #
echo ################################################

:loop
sleep 1
dir M: 2>nul >nul

if errorlevel 1 goto loop

color 07
cls
echo Drive "M:" found.

vboxmanage startvm yeba

if errorlevel 1 goto error

:end
