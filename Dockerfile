FROM alpine:3.4

MAINTAINER Orbit Team <orbit-opensource@ea.com>

RUN apk --update --no-cache add \
    python \
    py-pip \
    groff \
    jq \
    less \
    curl \
    && pip install awscli \
    && apk del py-pip

 ENTRYPOINT ["aws"]
