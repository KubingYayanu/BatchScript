@echo off
set a[0]=1 
set a[1]=2 
set a[2]=3 
echo The first element of the array is %a[0]% 
echo The second element of the array is %a[1]% 
echo The third element of the array is %a[2]%

set list=1 2 3 4
(for %%b in (%list%) do (
    echo %%b
))