@Echo Off

Set Source=D:\Documents\PendingSources\
Set Destination=D:\Documents\ConvertedData\
Set Suffix=_utf16.csv

:: Clear the destination folder
Cd %Destination%
Del /F /Q *.csv

Cd %Source%
For /R %%i in (*.csv) do (
    iconv -f utf-8 -t utf-16le %%i > %Destination%%%~ni%Suffix%
    rem echo %Destination%%%~ni%Suffix%
)