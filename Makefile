NS := lujenii
PRJ ?= matterllo
IMG := docker.io/$(NS)/$(PRJ)

TAG ?= $(shell git describe --tags)

build:	## build the current tag and latest version
	DOCKER_BUILDKIT=1 docker build --ssh default -t $(IMG):$(TAG) .
	DOCKER_BUILDKIT=1 docker build --ssh default -t $(IMG):latest .

push: build		## push the current tag and latest version [deps:build]
	docker push $(IMG):$(TAG)
	docker push $(IMG):latest

local: build	## run local instance
	docker run -it -e TRELLO_APIKEY=$(TRELLO_APIKEY) $(IMG):latest
