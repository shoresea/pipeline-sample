#!/bin/bash

echo "################################"
echo "########## Testing JAR #########"
echo "################################"

# Example - ./jenkins/test/mvn-test.sh mvn test
WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v $WORKSPACE/m2:/root/.m2 -w /app maven:3-alpine "$@"
