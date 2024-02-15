@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD "%~dp0"
CD ..\Obj
SET CC=gcc.exe -I..\Lib\Obj -I..\Lib\Mod -m32 -s -Os -g0 -fvisibility=hidden -fomit-frame-pointer -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -Wl,--gc-sections -Wfatal-errors

%CC% -c %1.c
IF errorlevel 1 PAUSE
