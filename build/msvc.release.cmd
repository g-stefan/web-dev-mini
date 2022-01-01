@echo off
rem Public domain
rem http://unlicense.org/
rem Created by Grigore Stefan <g_stefan@yahoo.com>

echo -^> release web-dev-mini

goto cmdXDefined
:cmdX
%*
if errorlevel 1 goto cmdXError
goto :eof
:cmdXError
echo "Error: release"
exit 1
:cmdXDefined

call :cmdX call .\build\msvc.config.cmd
call :cmdX call .\build\msvc.clean.cmd
call :cmdX call .\build\msvc.vendor.cmd
call :cmdX call .\build\msvc.make.cmd
call :cmdX call .\build\msvc.sign.cmd
call :cmdX call .\build\msvc.archive.cmd
call :cmdX call .\build\msvc.clean.cmd
