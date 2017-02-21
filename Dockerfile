FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.6

RUN gem install jira-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jira"]
CMD ["--help"]
