@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD ..\Obj

SET CC=gcc.exe -m32 -fPIC -Os -g0 -I.. -I..\Mod -fno-ident -fomit-frame-pointer -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -falign-functions=1 -mpreferred-stack-boundary=2 -falign-jumps=1 -falign-loops=1 -ffunction-sections -c

@SET Mod=%1
IF %Mod%==CmdLine.Windows SET Mod=CmdLine
IF %Mod%==Console.Windows SET Mod=Console
IF %Mod%==Platform.Windows SET Mod=Platform

%CC% %Mod%.c
IF errorlevel 1 PAUSE
