@echo off
echo Running JUnit tests...

REM Set classpath to compiled classes + JUnit and Hamcrest JARs
set CLASSPATH=.\bin;.\lib\junit-4.13.2.jar;.\lib\hamcrest-core-1.3.jar

REM Run the test using JUnitCore
java org.junit.runner.JUnitCore A.ProgramTest

REM Check error level and give feedback
if %ERRORLEVEL% EQU 0 (
    echo Tests ran successfully.
) else (
    echo Some tests failed.
)

exit /b %ERRORLEVEL%
