@echo off
echo Running JUnit tests...

:: Set the path for the JUnit JAR and other necessary libraries (if required)
set JUNIT_JAR="C:\path\to\junit-4.13.2.jar"
set HAMCREST_JAR="C:\path\to\hamcrest-core-1.3.jar"  :: If using Hamcrest with JUnit

:: Set the classpath (include your compiled classes and test classes here)
set CLASSPATH=..\bin;%JUNIT_JAR%;%HAMCREST_JAR%

:: Run JUnit tests using the JUnit jar
java -cp %CLASSPATH% org.junit.runner.JUnitCore A.ProgramTest

:: Exit the script
exit /b
