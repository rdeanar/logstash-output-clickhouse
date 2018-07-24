FROM ruby:2.5-alpine
COPY . /build
RUN gem build /build/logstash-output-clickhouse.gemspec -V

FROM scratch
COPY --from=0 /build/*.gem /