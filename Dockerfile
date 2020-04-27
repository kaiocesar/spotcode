FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache bash build-base nodejs sqlite-dev tzdata postgresql-dev yarn

RUN gem install bundler:2

RUN mkdir /spotcode

WORKDIR /spotcode

COPY package.json yarn.lock ./spotcode/

RUN yarn install --check-files

COPY Gem* /spotcode/

RUN bundle install

COPY . /spotcode

ENV PATH=./spotcode/bin:$PATH

CMD ["rails", "console"]
