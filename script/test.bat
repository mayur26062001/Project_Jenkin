@echo off
echo Running JUnit tests...

:: Set JAVA_HOME to JDK 17 if it's not already set
if "%JAVA_HOME%"=="" set JAVA_HOME=C:\Program Files\Zulu\zulu-17

:: Run JUnit test using JDK 17
"%JAVA_HOME%\bin\java" -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" org.junit.runner.JUnitCore A.ProgramTest
