@echo off 

SET /A a=5 
SET /A b=10 
SET /A c=%a% + %b% 
if %c%==15 echo "The value of variable c is 15" 
if %c%==10 echo "The value of variable c is 10"

SET str1=String1 
SET str2=String2 
if %str1%==String1 echo "The value of variable String1" 
if %str2%==String3 echo "The value of variable c is String3"

echo ----------------------------------------------------------

SET /A a = 5 
SET /A b = 10
SET /A c = %a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")

SET str1 = String1 
SET str2 = String2 
if %str1%==String1 (echo "The value of variable String1") else (echo "Unknown value") 
if %str2%==String3 (echo "The value of variable c is String3") else (echo "Unknown value")

:: %x is string
if "%1" neq "" if "%1"=="1" (echo "The value is 1") else (echo "Unknown value")
if "%2" neq "" if "%2"=="2" (echo "The value is 2") else (echo "Unknown value")
if "%3" neq "" if "%3"=="3" (echo "The value is 3") else (echo "Unknown value")

echo ----------------------------------------------------------

:: if defined variable command
SET str1 = String1 
SET str2 = String2 
if defined str1 echo "Variable str1 is defined"
if defined str3 (echo "Variable str3 is defined") else (echo "Variable str3 is not defined")

echo ----------------------------------------------------------

:: if exist file.ext command
if exist C:\set3.txt (echo "File exists") else (echo "File does not exist")