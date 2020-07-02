#!bin/bash
export cfg=config/default
export gp=cats/selenium
export tc=10
export flgCfg=false
export flgThrds=false
export sbp1=testcase
export sbp2=scenario
export e=false
export swingAppCP=

for i in "$@"; do
  if [ "$flgConfig" == "true" ]; then 
    export cfg=$i
    export flgConfig=false
    break
  fi
  if [ "$flgThrds" == "true" ]; then
    export tc=$i
    export flgThrds=false
    break
  fi
  if [ "$i" == "-configpath" ]; then
    export flgConfig=true
  fi
  if [ "$i" == "-threads" ]; then
    export flgThrds=true
  fi
  if [ "$i" == "-mode" ]; then
    export sbp1=bdd/runner
    export sbp2=bdd/stepdef
  fi
  if [ "$i" == "-execute" ]; then
    export e=true
  fi
done
if [ -e $cfg/src ]
then
  cp -f ../customactions/lib/*.jar lib
fi

  java -Dcfg=$cfg -jar "cats.jar" $@


if [ -e $cfg/src ]
then
	if [ "$e" == "false" ]; then
  find $cfg/src -type f -name '*.java' > $cfg/"cats-java.txt"
  javac  -cp ".:./lib/*:cats.jar" @$cfg/cats-java.txt
  
  file=${PWD}/../customactions/*.java
  arr=($file)

  if [ -e $arr ]
  then
    echo "Compiling Custom Action classes"
    javac -cp ./lib/*:cats.jar -d runtime ../customactions/*.java
    jar -cvf cats-custom-actions.jar -C runtime . >> null
  fi

  jar -cvf $cfg/cats-scripts.jar -C $cfg/src/ . > null
  jar -uvf $cfg/cats-scripts.jar -C src/main/java . > null
  fi
  FILES=$cfg/src/$gp/xml/cats-suites*.xml

  for f in $FILES
  do
    if [ $f == *"_SEQ.xml" ]
    then
      echo "Executing Suites in Sequential mode"
      java -cp ./lib/*:cats.jar:$cfg/cats-scripts.jar -Dcfg=$cfg org.testng.TestNG -suitethreadpoolsize 1 $f
    else
      echo "Executing Suites with Batches in Parallel mode"
      java -cp ./lib/*:cats.jar:$cfg/cats-scripts.jar -Dcfg=$cfg org.testng.TestNG -suitethreadpoolsize $tc $f
    fi
 done
 java -cp cats.jar -Dcfg=$cfg com.sapient.qa.cats.core.report.JenkinsExecutionThresholdCheck
else
 echo "No source files available to perform execute operation"	
fi
