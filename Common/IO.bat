@echo off

:: The "Standard In" file, known as "stdin", contains the input to the program/script.
:: The "Standard Out" file, known as "stdout", is used to write output for display on the screen.
:: The "Standard Err" file, known as "stderr", contains any error messages for display on the screen.

:: Each of these three standard files, otherwise known as the standard streams, 
:: are referenced using the numbers 0, 1, and 2. 
:: stdin is file 0
:: stdout is file 1
:: stderr is file 2

:: stdout stream
dir "C:\Program Files" > "C:\Users\kubing_lin\Desktop\Documents\BatchScript\TempData\stdout.txt"
:: stderr stream
dir "C:\Program Files" 2> "C:\Users\kubing_lin\Desktop\Documents\BatchScript\TempData\stderr.txt"
:: combine the stdout and stderr streams
dir "C:\Program Files" > "C:\Users\kubing_lin\Desktop\Documents\BatchScript\TempData\err&out.txt" 2>&1
:: The pseudo file NUL is used to discard any output from a program.
dir "C:\Program Files" > NUL

:: stdin stream
:: This can be done by redirecting the command prompt’s own stdin, called CON.
:: user input is terminated by user pressing Control + Z.
type CON > "C:\Users\kubing_lin\Desktop\Documents\BatchScript\TempData\stdin.txt"