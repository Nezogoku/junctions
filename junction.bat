@echo off

if "%~1"=="" (
    echo Source file not set . . .
    goto QUIT
)
set _name_=%~n1

echo Press ENTER without input to exit LOOP

:LOOP
set /p _outfolder_=Target folder is 
if [%_outfolder_%]==[] (
    echo Exit LOOP . . .
    goto QUIT
)

set _outfolder_=%_outfolder_:"=%
set _newfile_=%_outfolder_%\%_name_%

if exist "%_newfile_%" ( del "%_newfile_%" )
mklink /J "%_newfile_%" %1
echo ""

set "_outfolder_="
goto LOOP

:QUIT
pause&&exit