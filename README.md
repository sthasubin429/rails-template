# Rails Boilerplate

## README

- This app is meant to be used as boiler plate for rails projects.
- This app is fully dockerized and you can setup your development environment using Docker.
- Two docker-compose file are setup. One for development and one for deployment.
- Docker-compose file is setup using profiles.
- You can run different profiles by passing `--profile name` flag.
- Default profile is set to web.

## Following things are setup in this template
- Rails Admin
- Design system
- Authentication with devise
- Sidekiq for background job
- Dockerized app
- Code climate
- Unit testing using rspec and simple cov for coverage
- Pagination with kaminari

## Requirements
- Ruby - v3.3.4
- Ruby on Rails - v7.2
- PostgreSQL - v16
- sidekiq - 7.3
- sidekiq-scheduler - 5.0

## Development Requirements
- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [pre-commit](https://pre-commit.com/)
- [CodeClimate](https://github.com/codeclimate/codeclimate)

## Setup
Ensure that all the development requirements are installed.

### Local Development
- Install the dev requirements above.

- Copy  example .env file for development environment
```
cp .env.example .env.dev
```

- Copy  example .env file for test environment
```
cp .env.example .env.test
```

- Add all the necessary keys in .env.dev and .env.test files.

- After this, you can use make file to setup and run the application.

### General Commands

- Setting up project
```bash
make setup
```

- Building the project
```bash
make build
```

- Running the application
```bash
make serve
```

- Running Rspec for unit tests
```bash
make rspec
```

- For information regarding all the available make command
```bash
make
```
