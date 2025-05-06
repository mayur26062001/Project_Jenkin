@echo off
echo Compiling Java files...

:: Ensure JAVA_HOME is set to JDK 17
if "%JAVA_HOME%"=="" (
    set JAVA_HOME=C:\Program Files\Zulu\zulu-17
)

:: Clean the bin directory before compiling
if exist ..\bin rmdir /s /q ..\bin
mkdir ..\bin

:: Compile the classes using JDK 17
"%JAVA_HOME%\bin\javac" --release 17 -d ..\bin ..\src\A\Program.java
"%JAVA_HOME%\bin\javac" --release 17 -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" -d ..\bin ..\src\A\ProgramTest.java

echo Compilation finished.
