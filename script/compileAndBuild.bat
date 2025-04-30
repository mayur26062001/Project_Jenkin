@echo off
echo Compiling Java files...

:: Create output directory if it doesn't exist
mkdir ..\bin 2>nul

:: Compile Java files, with classpath pointing to JUnit and Hamcrest JARs
javac -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar" -d ..\bin ..\src\A\Program.java ..\src\A\ProgramTest.java

IF %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b 1
) ELSE (
    echo Compilation successful!
)
