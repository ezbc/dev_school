FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app

RUN gem install bundler --no-ri --no-rdoc

COPY --chown=14001:14001 Gemfile /app/Gemfile
COPY --chown=14001:14001 Gemfile.lock /app/Gemfile.lock

# bundler work
ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"

RUN bundle install --jobs 4 --binstubs

RUN find . -iname '*.o' -exec rm {} \; && \
    find . -iname '*.a' -exec rm {} \;

COPY . /app/
