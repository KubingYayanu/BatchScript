@Echo Off

Set Source=C:\Users\kubing_lin\Desktop\Documents\PendingSources\
Set Destination=C:\Users\kubing_lin\Desktop\Documents\ConvertedData\
Set Suffix=_utf8.csv

:: Clear the destination folder
Cd %Destination%
Del /F /Q *.csv

Cd %Source%
For /R %%i in (*.csv) do (
    iconv -f utf-16 -t utf-8 %%i > %Destination%%%~ni%Suffix%
    rem echo %Destination%%%~ni%Suffix%
)