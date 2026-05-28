DOCKER_IMAGE?=dockette/deploy
DOCKER_PLATFORM?=linux/amd64

.PHONY: build
build: build-deployer8 build-deployer7 build-deployer6

.PHONY: test
test: test-deployer8 test-deployer7 test-deployer6

.PHONY: run
run: run-deployer8

_docker-build:
	docker buildx \
		build \
		--platform ${DOCKER_PLATFORM} \
		--pull \
		-t ${DOCKER_IMAGE}:${VERSION} \
		./${CONTEXT}

_docker-test:
	docker run --rm ${DOCKER_IMAGE}:${VERSION} dep --version

_docker-run:
	docker run --rm -it -v ${PWD}:/srv ${DOCKER_IMAGE}:${VERSION}

.PHONY: build-deployer6
build-deployer6:
	VERSION=deployer6 CONTEXT=deployer/v6 $(MAKE) _docker-build

.PHONY: build-deployer7
build-deployer7:
	VERSION=deployer7 CONTEXT=deployer/v7 $(MAKE) _docker-build

.PHONY: build-deployer8
build-deployer8:
	VERSION=deployer8 CONTEXT=deployer/v8 $(MAKE) _docker-build

.PHONY: test-deployer6
test-deployer6:
	VERSION=deployer6 $(MAKE) _docker-test

.PHONY: test-deployer7
test-deployer7:
	VERSION=deployer7 $(MAKE) _docker-test

.PHONY: test-deployer8
test-deployer8:
	VERSION=deployer8 $(MAKE) _docker-test

.PHONY: run-deployer8
run-deployer8:
	VERSION=deployer8 $(MAKE) _docker-run
