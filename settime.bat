@echo off
cls

REM Set the variable %hour% to the hours (0-23) of the current time
set hour=%time:~0,2%
rem Leftpad with zero if necessary
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
REM echo hour=%hour%

REM Set the variable %min% to the minute of the current time
set min=%time:~3,2%
rem Leftpad with zero if necessary
if "%min:~0,1%" == " " set min=0%min:~1,1%
REM echo min=%min%

REM Set the variable %secs% to the seconds of the current time
set secs=%time:~6,2%
rem Leftpad with zero if necessary
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%
REM echo secs=%secs%

REM Set the variable %year% to the current year
set year=%date:~-4%
REM echo year=%year%

REM Set the variable %month% to the two digit representation of the month 
set month=%date:~4,2%
rem Leftpad with zero if necessary
if "%month:~0,1%" == " " set month=0%month:~1,1%
REM echo month=%month%

REM Set the variable %day% to the two digit representation of the day
set day=%date:~7,2%
rem Leftpad with zero if necessary
if "%day:~0,1%" == " " set day=0%day:~1,1%
REM echo day=%day%

REM Create the date and time stamp as the variable %datetimef%
set datetimef=%year%.%month%.%day% %hour%:%min%:%secs%

REM Write the timestamp out to the file %1\time.txt
REM (%1 is the first parameter passed to the script)
echo datetimef=%datetimef%>%1\time.txt
