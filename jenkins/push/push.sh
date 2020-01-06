#!/bin/bash

echo "################################"
echo "######## Pushing Image #########"
echo "################################"

IMAGE="maven-project-4-jenkins"

echo "******* Logging In *******"
docker login -u mav3n -p $PASS

echo "****** Tagging Image ******"
docker tag $IMAGE:$BUILD_TAG mav3n/$IMAGE:$BUILD_TAG

echo "****** Pushing Image ******"
docker push mav3n/$IMAGE:$BUILD_TAG
