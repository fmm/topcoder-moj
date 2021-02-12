#!/bin/sh
cd $(dirname $0)

echo "Cleaning..."
mkdir -p bin/
rm -fr bin/moj

echo "Compiling..."
javac -d bin/ -target 1.8 -source 1.8 -cp deps/CodeProcessor.jar:deps/FileEdit.jar:deps/ContestApplet.jar:src/ src/moj/*.java

./package.sh
