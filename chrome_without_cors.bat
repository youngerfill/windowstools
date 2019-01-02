@echo off

:: Delete existing directory
rmdir /s /q "C:\Bert\dump\chrome_without_cors"

:: 
if errorlevel 0 goto startchrome

goto error

:startchrome
:: Start chrome without CORS
start "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --user-data-dir="C:\Bert\dump\chrome_without_cors" --disable-web-security "C:\Bert\docs\Startpage\index.html"

:: 
if errorlevel 0 goto end

:error

color 4F

echo ####################################################
echo #                                                  #
echo #                                                  #
echo #              Failed to start chrome              #
echo #                                                  #
echo #                                                  #
echo ####################################################

pause

:end

