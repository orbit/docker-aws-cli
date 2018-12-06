FROM alpine:3.8

MAINTAINER Orbit Team <orbit@ea.com>

ENV AWS_CLI_VERSION 1.16.67

RUN apk --update --no-cache add \
    python \
    py-pip \
    groff \
    jq \
    less \
    curl \
    && pip install awscli==$AWS_CLI_VERSION \
    && apk del py-pip

 ENTRYPOINT ["aws"]