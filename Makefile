# A Self-Documenting Makefile: http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

SHELL = /bin/bash
OS = $(shell uname | tr A-Z a-z)

.PHONY: up
up: start ## Spin up the environment

.PHONY: start
start: ## Start services
# Start services (eg. docker compose)

.PHONY: stop
stop: ## Stop services
# Stop services (eg. docker compose)

.PHONY: ps
ps: ## Check the status of services services

.PHONY: test
test: ## Run tests

.PHONY: slides
slides: ## Open slides in the browser
	quarto preview slides

.PHONY: help
.DEFAULT_GOAL := help
help:
	@grep -h -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
