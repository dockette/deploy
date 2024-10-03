DOCKER_IMAGE?=dockette/deploy
DOCKER_PLATFORM?=linux/amd64

_docker-build:
	docker buildx \
		build \
		--platform ${DOCKER_PLATFORM} \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${CONTEXT}

.PHONY: build-deployer6
build-deployer6:
	VERSION=deployer6 CONTEXT=deployer/v6 $(MAKE) _docker-build

.PHONY: build-deployer7
build-deployer7: 
	VERSION=deployer7 CONTEXT=deployer/v7 $(MAKE) _docker-build