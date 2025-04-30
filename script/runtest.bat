@echo off
rem Set Java home and classpath (adjust paths based on your project structure)
set JAVA_HOME=C:\Program Files\Zulu\zulu-17-jre
set PATH=%JAVA_HOME%\bin;%PATH%

rem Set classpath for your compiled classes and JUnit
set CLASSPATH=.;C:\path\to\junit-4.x.jar;C:\ProgramData\Jenkins\.jenkins\workspace\Assignment__1\bin

echo Running JUnit tests...
rem Compile the source code if not already compiled
javac -cp %CLASSPATH% -d bin src/A/Program.java src/A/Student.java test/A/ProgramTest.java

rem Run the tests using JUnit
java -cp %CLASSPATH% org.junit.runner.JUnitCore A.ProgramTest

rem Check if tests passed or failed
if %ERRORLEVEL% equ 0 (
    echo Tests passed!
) else (
    echo Tests failed!
)

pause
