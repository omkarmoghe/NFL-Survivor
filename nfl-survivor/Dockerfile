FROM ruby:2.7

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /nfl-survivor

COPY Gemfile /nfl-survivor/Gemfile
COPY Gemfile.lock /nfl-survivor/Gemfile.lock
RUN bundle install
RUN apt-get update && apt-get install -y postgresql-client

COPY . /nfl-survivor/
RUN chmod +x "bin/setup"
EXPOSE ${PORT}
ENTRYPOINT ["bin/setup"]
