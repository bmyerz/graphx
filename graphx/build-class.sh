file=$1
SCALA_HOME=~/escience/spark/scala-2.10.4
GRAPHX_PKG=org/apache/spark/graphx

pushd target/scala-2.10/classes
CLASSPATH=`../../../../bin/compute-classpath.sh`
$SCALA_HOME/bin/scalac -classpath $CLASSPATH ../../../src/main/scala/$GRAPHX_PKG/$file
popd
