@echo off
set var=abcde
echo %var%
::%variable:~num_chars_to_skip% 
echo %var:~1%
::%variable:~num_chars_to_skip,num_chars_to_keep%
echo %var:~1,3%
::%variable:~num_chars_to_skip,-num_chars_to_keep%
echo %var:~1,-3%
::%variable:~-num_chars_to_skip,num_chars_to_keep%
echo %var:~-2,1%
::%variable:~-num_chars_to_skip,-num_chars_to_keep%
echo %var:~-4,-1%