pass=$1
DOCKER_TAG=$2


docker login -u hcv06 -p ${pass}



if [ -z $DOCKER_TAG ]; then
		DOCKER_TAG="latest"
fi

docker build -t hcv06/wehavedev:${DOCKER_TAG} .

docker push hcv06/wehavedev:${DOCKER_TAG}

