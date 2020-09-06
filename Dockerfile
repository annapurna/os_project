FROM ruby:2.7-alpine3.11  
# throw errors if Gemfile has been modified since Gemfile.lock  
RUN gem install bundler:2.0.1
RUN bundle config --global frozen 1  
WORKDIR /usr/src/app  
COPY Gemfile Gemfile.lock ./  
COPY . .  
CMD ["./test.rb"]
