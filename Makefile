USER = $(shell whoami)
IMAGE = $(USER)-debian-env-image
CONTAINER = $(USER)-debian-env-container

all: db dr

db:
	@docker build -t $(IMAGE) .

dr:
	@docker run -it --rm -v $(shell dirname $(shell pwd)):/project -w /project --name $(CONTAINER) $(IMAGE) zsh

.PHONY: all db dr