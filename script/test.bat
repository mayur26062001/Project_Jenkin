@echo off
echo Running JUnit tests...

:: Run JUnit test
java -cp ".;..\lib\junit-4.13.2.jar;..\lib\hamcrest-core-1.3.jar;..\bin" org.junit.runner.JUnitCore A.ProgramTest
