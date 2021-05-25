#!/bin/bash

IMAGE_TAG=$1



yq -i demo-deployment.yaml "spec.containers[0].image" "$IMAGE_TAG"

#yq w demo-deployment.yaml "spec.containers[0]..value" ""

