::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCeDJEyX8VAjFDpaRQjCFmO7OpEZ++Pv4Pq7tUQbXa9tIdrDieTebukQ5SU=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCeDJEyX8VAjFDpaRQjCFmO7OpEZ++Pv4Pq7ikIJR/IwbM/227qPJ+UBpED8cPY=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:begining
@echo off
cls
color 2e
title Hotspot manager for PC 
echo This simple program helps you to share your PC's net connection
echo by setting up hotspot on your PC
echo.
echo What do you want to do?
echo.
echo set (setup hotspot)
echo.
echo start (start hotspot)
echo.
echo stop (stop hotspot)
echo.
set /p var=Enter appropriate command from the list:
goto %var%


:set
cls
color 1e
echo Welcome to the hotspot setting area
echo.
set /p essid=Enter the name by which you want to see your network:
echo.
set /p pass=Enter the password which you want to set for your network (Minimum 8 characters):
echo.
netsh wlan set hostednetwork mode="allow" ssid="%essid%" key="%pass%"
echo.
echo Hotspot Setup Successful
echo.
echo Please note that the hotspot has been set up and not started 
pause
goto begining

:start
cls
color ca
echo Welcome to the hotspot starting area
echo.
echo If you haven't set up your hotspot yet by going to the 
echo setting screen then go there first
echo.
set /p temp=Do you want to go to hotspot setting screen now (y/n):
if %temp% == y (goto set)
echo.
set /p hotspotstarter=Do you want to start hotspot now (y/n):
if %hotspotstarter% == y (echo.
netsh wlan start hostednetwork 
echo Hotspot Started Successfully
pause)
goto begining

:stop
cls
color d1
echo Welcome to the hotspot stopping area
echo.
echo If you haven't started your hotspot yet by going to the 
echo starting screen then go there first
echo.
set /p temp=Do you want to go to hotspot starting screen now (y/n):
if %temp% == y (goto start)
echo.
set /p hotspotstarter=Do you want to stop hotspot now (y/n):
if %hotspotstarter% == y (echo.
netsh wlan stop hostednetwork 
echo Hotspot Stopped Successfully
pause)
goto begining