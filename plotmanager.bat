@echo off
set /a maxplots = 8
set /a phase1timesecs = 4400
set /a initialdelay = 100

for /f "delims=" %%a in (' "wmic process where name="chia.exe" | find "chia.exe" /c" ') do @set currentplots=%%a
echo ===== Current Plotting Processes: %currentplots% =====

timeout /t %initialdelay% 

:checkplots
cls
for /f "delims=" %%a in (' "wmic process where name="chia.exe" | find "chia.exe" /c" ') do @set currentplots=%%a
echo ===== Current Plotting Processes: %currentplots% =====

if %currentplots% lss %maxplots% (
 start /min createplot.bat

 echo ===== Started New Parallel plot =====
 timeout /t %phase1timesecs% 

 goto :checkplots
) else (
 cls
 echo ===== Maximum %currentplots% Plots Processing =====
 timeout /t 60 
 goto :checkplots
)

