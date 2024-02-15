@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD "%~dp0"
CD ..\Obj
SET StripExe=-nostartfiles ..\Lib\Mod\crt1.c -Wl,-e_WinMain@16
SET CC=gcc.exe %StripExe% -I..\Lib\Obj -I..\Lib\Mod -m32 -s -Os -g0 -fvisibility=hidden -fomit-frame-pointer -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -Wl,--gc-sections -Wfatal-errors

%CC% Coloss.c Front.c Z80.c PDP11.c ..\Lib\Ofront.a -o..\Coloss.exe
IF errorlevel 1 PAUSE
