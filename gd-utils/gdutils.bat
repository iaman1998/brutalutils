@ECHO off
title Gdutils is bae
color 0b
ECHO.
ECHO Gdutils by iwestlin! - English version by Roshanconnor!
ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO.
ECHO What would you like to do ?
ECHO ----------------------------------------------------------------------------------------------------------------------
ECHO off

:option
ECHO.
ECHO 1) COPY
ECHO 2) SIZE
ECHO 3) DEDUPE
ECHO 4) EXIT
ECHO.
SET /P option="Choose your Option: "
if %option% == 1 (goto copy)
if %option% == 2 (goto size)
if %option% == 3 (goto dedupe)
if %option% == 4 (EXIT)
ECHO.

:copy
ECHO.
ECHO 1) Create a New Folder with the same name (as in source) in the destination as well
ECHO 2) Donot create a new Folder in the destination
ECHO.
SET /P cp="Choose your Mode "
ECHO ----------------------------------------------------------------------------------------------------------------------
SET /P SRC="[Enter Source Folder ID] "
SET /P DST="[Enter Destination Folder ID] "
ECHO.
if %cp% == 1 (node --max-old-space-size=512 copy %SRC% %DST% -S)
if %cp% == 2 (node --max-old-space-size=512 copy %SRC% %DST% -S -D)
ECHO.
pause
goto option


:size
ECHO.
ECHO 1) Normal Size Info
ECHO 2) Create a html file with tree like pattern
ECHO 3) Create a snap2html index
ECHO.
SET /P sz="Choose your Mode "
ECHO ----------------------------------------------------------------------------------------------------------------------
SET /P SRC="[Enter Folder ID] "
ECHO.
if %sz% == 1 (node count %SRC% -S)
if %sz% == 2 (node count %SRC% -S -t tree -o tree.html)
if %sz% == 3 (node count %SRC% -S -t snap -o index.html)
ECHO Check your Gd-utils folder to Find the html File
ECHO.
pause
goto option


:dedupe
ECHO.
SET /P SRC="[Enter Folder ID] "
ECHO.
node dedupe %SRC% -S
ECHO.
pause
goto option







