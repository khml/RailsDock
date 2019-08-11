FROM ruby:2.5
ARG appName
RUN apt-get update -qq 
RUN apt-get install -y nodejs mysql-client

RUN mkdir /${appName}
WORKDIR /${appName}

COPY Gemfile /${appNamme}/Gemfile
COPY Gemfile.lock /${appName}/Gemfile.lock

RUN bundle install
COPY . /${appName}

COPY generateEntrypoint.sh /tmp/
RUN bash generateEntrypoint.sh ${appName} > /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

