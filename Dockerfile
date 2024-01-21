FROM ruby:3.1.4

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app/

RUN bundle exec rails db:migrate

CMD ["rails", "server", "-b", "0.0.0.0"]
