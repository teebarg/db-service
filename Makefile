.PHONY: help startTest updateTest stopTest
.EXPORT_ALL_VARIABLES:

PROJECT_SLUG := "db-service"

help: ## Help for project
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

# ANSI color codes
GREEN=$(shell tput -Txterm setaf 2)
RED=$(shell tput -Txterm setaf 1)
BLUE=$(shell tput -Txterm setaf 6)
RESET=$(shell tput -Txterm sgr0)

## Docker
startTest: ## Start docker development environment
	@echo "$(GREEN)Starting docker environment...$(RESET)"
	docker compose -p $(PROJECT_SLUG) up --build -d

updateTest:  ## Update test environment containers (eg: after config changes)
	@echo "$(BLUE)Updating docker environment...$(RESET)"
	docker compose -p $(PROJECT_SLUG) up --build -d

stopTest: ## Stop test development environment
	@echo "$(RED)Removing docker environment...$(RESET)"
	@COMPOSE_PROJECT_NAME=$(PROJECT_SLUG) docker compose down
