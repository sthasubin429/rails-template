FROM ruby:3.3.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client libxml2-dev libcurl4-openssl-dev nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v 2.5.17

WORKDIR /rails-template

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

# copy the whole app
COPY . /rails-template

# precompile assets
RUN bundle exec rake assets:precompile --trace

# Script run when container first starts
COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT [ "/rails-template/entrypoint.sh" ]

# Document that we're going to expose port 3000
EXPOSE 3000

# Use Bash as the default command
CMD ["/usr/bin/bash"]
