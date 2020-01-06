#!/bin/bash

echo "################################"
echo "########## Testing JAR #########"
echo "################################"

# Example - ./jenkins/test/mvn-test.sh mvn test

docker run --rm -v $PWD/java-app:/app -v $PWD/m2:/root/.m2 -w /app maven:3-alpine "$@"
