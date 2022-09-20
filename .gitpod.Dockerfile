FROM ruby:2.7.2-buster

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  # Install node and yarn
  apt-get update && apt-get install -y nodejs yarn
