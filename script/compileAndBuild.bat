@echo off
echo Compiling Java files...

cd src
javac A\Program.java A\ProgramTest.java -d ../bin

if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b 1
) else (
    echo Compilation successful!
)
