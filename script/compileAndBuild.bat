@echo off
echo Compiling Java files...

:: Create output directory if it doesn't exist
mkdir ..\bin

:: Compile Java files from src/A and output to bin
javac -d ..\bin ..\src\A\Program.java ..\src\A\ProgramTest.java

:: Check if compilation was successful
IF %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b 1
) ELSE (
    echo Compilation successful!
)
