@echo off
rem
rem ML.BAT
rem Construye las librer�as de OOHG para Harbour 3.x y MinGW usando la herramienta HBMK2.
rem

cls
call BuildLib.bat %1 %2 %3 %4 %5 %6 %7 %8 %9
echo.
echo Copiando ...
if not exist %HG_ROOT%\lib\hb\mingw\liboohg.a      echo Missing %HG_ROOT%\lib\hb\mingw\liboohg.a
if     exist %HG_ROOT%\lib\hb\mingw\liboohg.a      copy %HG_ROOT%\lib\hb\mingw\liboohg.a %HG_ROOT%\lib
if not exist %HG_ROOT%\lib\hb\mingw\libminiprint.a echo Missing %HG_ROOT%\lib\hb\mingw\libminiprint.a
if     exist %HG_ROOT%\lib\hb\mingw\libminiprint.a copy %HG_ROOT%\lib\hb\mingw\libminiprint.a %HG_ROOT%\lib
if not exist %HG_ROOT%\lib\hb\mingw\libhbprinter.a echo Missing %HG_ROOT%\lib\hb\mingw\libhbprinter.a
if     exist %HG_ROOT%\lib\hb\mingw\libhbprinter.a copy %HG_ROOT%\lib\hb\mingw\libhbprinter.a %HG_ROOT%\lib
echo.

rem EOF
