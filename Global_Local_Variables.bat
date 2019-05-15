@echo off 
set globalvar=global
SETLOCAL
set var=13145
set /A var=%var% + 5
echo %var%
echo %globalvar%
ENDLOCAL