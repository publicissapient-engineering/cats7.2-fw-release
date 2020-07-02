:: BAT file to start the cats tool.
@echo off

cls
setlocal enabledelayedexpansion

set argslen=0
set ix=1
set cfg=config/default
set gp=cats/selenium
set cfgIx=0
set tc=10
set tcIx=0
set mIx=0
set mode=0
set sbp1=testcase
set sbp2=scenario
set e="false"
set swingAppCP=

FOR %%x in (%*) do (
  set /A argslen+=1
  set /A ix+=1
  set argVec[!argslen!]=%%~x

  IF /I -mode==%%x (
    set mIx=!ix!
    set sbp1=bdd/runner
    set sbp2=bdd/stepdef
  )
  IF /I -configPath==%%x set cfgIx=!ix!
  IF /I -threads==%%x set tcIx=!ix!
  IF /I -execute==%%x set e="true"
  IF /I -genpath==%%x set gp=!ix!
)

IF NOT %cfgIx%==0 set cfg=!argVec[%cfgIx%]!
IF NOT %tcIx%==0 set tc=!argVec[%tcIx%]!
IF NOT %mIx%==0 set mode=!argVec[%mIx%]!

set JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF8

IF EXIST "..\customactions\lib\*.jar" copy /Y "..\customactions\lib\*.jar" lib
java -jar "cats.jar" %*

IF "%mode%" == "export2javaref" GOTO EXIT
  IF "%mode%" == "report" GOTO EXIT
    GOTO EXEC

:EXEC
IF EXIST "%cfg%\src\%gp%\%sbp1%\*.java" (
IF %e% =="false" (
  dir "%cfg%\src\*.java" /s /b > %cfg%\"cats-java.txt"
  javac  -cp ".;./lib/*;cats.jar" @%cfg%\cats-java.txt 
  
  jar -cvf %cfg%/cats-scripts.jar -C "%cfg%/src/" . > nul
  jar -uvf %cfg%/cats-scripts.jar -C "src/main/java" . > nul
 
  IF EXIST %cd%\..\customactions\*.java (
	echo "Compiling Custom Action classes...."
	javac -cp "./lib/*;cats.jar" -d runtime ../customactions/*.java
	jar -cvf "cats-custom-actions.jar" -C runtime . >> nul
  )
	) 
	
  IF EXIST "%cfg%\src\%gp%\xml\cats-suites.xml" (
	java -cp "./*;./lib/*;%cfg%/cats-scripts.jar" -Dcfg=%cfg% org.testng.TestNG -suitethreadpoolsize %tc% "%cfg%\src\%gp%\xml\cats-suites.xml"
  )

  @Echo off
  FOR %%1 in ("%cfg%\src\%gp%\xml\cats-suites_*.xml") do (
    echo %%1 | findstr /I /C:"_SEQ" 1>nul
    IF errorlevel 1 (
      java -cp "./lib/*;cats.jar;%cfg%/cats-scripts.jar" -Dcfg=%cfg% org.testng.TestNG -suitethreadpoolsize %tc% %%1
    ) ELSE (
      java -cp "./lib/*;cats.jar;%cfg%/cats-scripts.jar" -Dcfg=%cfg% org.testng.TestNG -suitethreadpoolsize 1 %%1
    )
	java -cp "cats.jar" -Dcfg=%cfg% com.sapient.qa.cats.core.report.JenkinsExecutionThresholdCheck
  )
  
)

:EXIT
