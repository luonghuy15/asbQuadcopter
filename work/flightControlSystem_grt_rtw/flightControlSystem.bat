
set MATLAB=C:\Polyspace\R2021a

cd .

if "%1"=="" ("C:\POLYSP~1\R2021a\bin\win64\gmake"  -f flightControlSystem.mk all) else ("C:\POLYSP~1\R2021a\bin\win64\gmake"  -f flightControlSystem.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1