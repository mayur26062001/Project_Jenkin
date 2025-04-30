@echo off
echo Compiling Java files...

:: Create bin folder if not exists
if not exist ..\bin mkdir ..\bin

:: Compile main class
javac --release 17 -d ..\bin ..\src\A\Program.java

:: Compile test class
javac --release 17 -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" -d ..\bin ..\src\A\ProgramTest.java

:: Run JUnit test
echo Running tests...
java -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" org.junit.runner.JUnitCore A.ProgramTest
