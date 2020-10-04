FROM ruby:2.7

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /nfl-survivor

COPY Gemfile /nfl-survivor/Gemfile
COPY Gemfile.lock /nfl-survivor/Gemfile.lock
RUN bundle install

COPY . /nfl-survivor/
EXPOSE ${PORT}
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
