FROM ruby:2.7.1
ADD ./Gemfile ./Gemfile.lock ./
RUN bundle install
COPY src ./src
ENTRYPOINT ["bundle", "exec", "ruby", "./src/index.rb"]
CMD ["0", "0"]
