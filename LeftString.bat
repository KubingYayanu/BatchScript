@echo off 
set str=Helloworld
echo %str%

set str=%str:~0,5% 
echo %str%