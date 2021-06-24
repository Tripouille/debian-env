all: db dr

db:
	docker build -t mi .

dr:
	docker run -it --rm -v $(shell dirname $(shell pwd)):/project -w /project --name mc mi zsh

.PHONY: all db dr