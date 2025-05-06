@echo off
echo Compiling Java files...

:: Set JAVA_HOME to JDK 17 if it's not already set
if "%JAVA_HOME%"=="" set JAVA_HOME=C:\Program Files\Zulu\zulu-17

:: Create bin folder if not exists
if not exist ..\bin mkdir ..\bin

:: Compile main class
"%JAVA_HOME%\bin\javac" --release 17 -d ..\bin ..\src\A\Program.java

:: Compile test class
"%JAVA_HOME%\bin\javac" --release 17 -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" -d ..\bin ..\src\A\ProgramTest.java

echo Compilation finished.
