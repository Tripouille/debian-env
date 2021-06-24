USER = $(shell whoami)
PARENT_PATH = $(shell dirname $(shell pwd))
PARENT_NAME = $(shell basename $(PARENT_PATH))
IMAGE = $(USER)-debian-env-image
CONTAINER = $(USER)-debian-env-container

all: db dr

db:
	@docker build -t $(IMAGE) .

dr:
	@docker run -it --rm -v $(PARENT_PATH):/debian-env-$(PARENT_NAME) -w /debian-env-$(PARENT_NAME) --name $(CONTAINER) $(IMAGE) zsh

.PHONY: all db dr