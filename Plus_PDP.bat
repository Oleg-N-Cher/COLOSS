@Coloss.exe -pdp11 Plus.col
@IF errorlevel 1 PAUSE

Bin\pdp11dasm.exe Plus.col.bin
@PAUSE
