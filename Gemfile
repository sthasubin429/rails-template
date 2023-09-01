# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.6"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Authentication
gem 'devise', '~> 4.9'

# rails admin
gem 'rails_admin', '~> 3.1', '>= 3.1.1'
gem "sassc-rails"

# Background jobs
gem "sidekiq", "~> 7.0"
gem "sidekiq-scheduler", "~> 5.0"

# for HTTP requests
gem 'faraday', '~> 2.7', '>= 2.7.4'

# Pagination
gem 'kaminari', '~> 1.2', '>= 1.2.2'

group :development, :test do
  gem "byebug"
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "mailcatcher"
  gem "rubocop", "~> 1.26", require: false
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

  gem "database_cleaner", "~> 2.0", ">= 2.0.1"
  gem "factory_bot_rails", "~> 6.2"
  gem "rspec-rails", "~> 6.0", ">= 6.0.1"
  gem "simplecov", require: false
  gem "timecop", "~> 0.9.5"
  gem "webmock", "~> 3.18", ">= 3.18.1"
end
