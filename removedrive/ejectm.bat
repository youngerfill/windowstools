@echo off

cd c:\bert\tools\removedrive\x64

removedrive M:

if errorlevel 2 goto end

if errorlevel 1 goto error

goto end

:error

echo Failed to eject M:
pause

:end

echo Done.