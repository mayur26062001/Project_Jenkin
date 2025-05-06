@echo off
echo Compiling Java files...

:: Check JAVA_HOME is set
if "%JAVA_HOME%"=="" (
    echo JAVA_HOME is not set. Exiting.
    exit /b 1
)

:: Create bin folder if not exists
if not exist ..\bin mkdir ..\bin

:: Compile main class
"%JAVA_HOME%\bin\javac" --release 17 -d ..\bin ..\src\A\Program.java

:: Compile test class
"%JAVA_HOME%\bin\javac" --release 17 -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" -d ..\bin ..\src\A\ProgramTest.java

echo Compilation finished.
