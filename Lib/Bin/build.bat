@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
SET Mod=%1
IF %Mod%==CmdLine.Windows SET Mod=CmdLine
IF %Mod%==Console.Windows SET Mod=Console
IF %Mod%==Platform.Windows SET Mod=Platform
CALL ..\Bin\Compile.bat %Mod%

SET CC=gcc.exe -m32 -fPIC -Os -g0 -I.. -I..\Mod -fno-ident -fomit-frame-pointer -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -falign-functions=1 -mpreferred-stack-boundary=2 -falign-jumps=1 -falign-loops=1 -ffunction-sections -c
SET AR=ar.exe -rc ..\XDev.a
IF EXIST ..\XDev.a DEL ..\XDev.a

%CC% ..\Mod\SYSTEM.c Platform.c CmdLine.c Console.c Files.c
IF errorlevel 1 PAUSE
%AR% SYSTEM.o Platform.o CmdLine.o Console.o Files.o
IF errorlevel 1 PAUSE
