# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.4"

gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem 'pg', '~> 1.5', '>= 1.5.7'
gem 'puma', '~> 6.4', '>= 6.4.2'
gem 'rails', '~> 7.2', '>= 7.2.1'
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

# Authentication
gem 'devise', '~> 4.9'

# rails admin
gem 'rails_admin', '~> 3.1', '>= 3.1.4'
gem "sassc-rails"

# Background jobs
gem 'sidekiq', '~> 7.3', '>= 7.3.1'
gem 'sidekiq-scheduler', '~> 5.0', '>= 5.0.6'

# for HTTP requests
gem 'faraday', '~> 2.10', '>= 2.10.1'

# Pagination
gem 'kaminari', '~> 1.2', '>= 1.2.2'

group :development, :test do
  gem "byebug"
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "mailcatcher"
  gem 'rubocop', '~> 1.65', '>= 1.65.1'
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

  gem "database_cleaner", "~> 2.0", ">= 2.0.2"
  gem 'factory_bot_rails', '~> 6.4', '>= 6.4.3'
  gem 'rspec-rails', '~> 6.1', '>= 6.1.4'
  gem "simplecov", require: false
  gem 'timecop', '~> 0.9.10'
  gem 'webmock', '~> 3.23', '>= 3.23.1'
end
