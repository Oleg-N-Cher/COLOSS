@SET Include=-I..\Lib -I..\Lib\Obj
@SET Libraries=..\Lib\XDev.a
@SET Options=-falign-functions=1 -mpreferred-stack-boundary=2 -falign-jumps=1 -falign-loops=1
@SET Pause=TRUE
@CALL %XDev%\WinDev\Bin\Build.bat Coloss
@%XDev%\WinDev\Bin\MinGW\bin\objcopy --remove-section=.reloc --remove-section=.pdata ..\Coloss.exe
::@..\Bin\upx --ultra-brute ..\Coloss.exe
