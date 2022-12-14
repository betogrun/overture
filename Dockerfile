FROM ruby:3.1
ENV BUNDLE_PATH /usr/local/bundle

WORKDIR /usr/src/your_application

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

ENTRYPOINT ["./entrypoint.sh"]

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
