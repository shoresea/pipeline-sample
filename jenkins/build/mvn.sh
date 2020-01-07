#!/bin/bash

echo "################################"
echo "######### Building JAR #########"
echo "################################"

# Example - ./jenkins/build/mvn.sh mvn -B -DskipTests clean package

WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v $WORKSPACE/m2:/root/.m2 -w /app maven:3-alpine "$@"
