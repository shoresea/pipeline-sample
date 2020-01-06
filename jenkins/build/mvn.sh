#!/bin/bash

echo "################################"
echo "######### Building JAR #########"
echo "################################"

# Example - ./jenkins/build/mvn.sh mvn -B -DskipTests clean package

docker run --rm -v $PWD/java-app:/app -v $PWD/m2:/root/.m2 -w /app maven:3-alpine "$@"
