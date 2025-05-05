@echo off
echo Compiling Java files...

:: Set JDK 17 path (adjust the path to where your JDK 17 is installed)
set JAVA_HOME="C:\Program Files\Java\jdk-17"

:: Create bin folder if not exists
if not exist ..\bin mkdir ..\bin

:: Compile main class using JDK 17
"%JAVA_HOME%\bin\javac" --release 17 -d ..\bin ..\src\A\Program.java

:: Compile test class using JDK 17 (without running the tests)
"%JAVA_HOME%\bin\javac" --release 17 -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" -d ..\bin ..\src\A\ProgramTest.java

echo Compilation finished.
