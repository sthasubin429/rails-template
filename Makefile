.DEFAULT_GOAL := help
dc = docker-compose -f docker-compose.dev.yml
dctest = docker-compose -f docker-compose.dev.yml --profile test run test

help: # Show help
	@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup: build dbsetup serve # Setup when running the project for the first time

build: # Build docker containers of the project
	${dc} build

serve: # Serves the application
	${dc} up

down: # Stopping docker containers
	${dc} down

dbsetup: # Setup database for the application
	${dc} run web rails db:setup

clear-pid: # Deletes the pid file
	sudo rm -rf tmp/pids/*

reload: clear-pid build migrate serve # Re-builds, migrates and serves the application

pre-commit: # Runs commands for pre-commit
	bash .git/hooks/pre-commit
	codeclimate analyze
	${dctest}

rspec: # Runs unit test for the entire project
	${dctest}

console: # Runs rails console
	${dc} run web rails console

dbconsole: # Runs database console
	${dc} run web rails dbconsole

migrate: # Runs migration
	${dc} run web rails db:migrate
