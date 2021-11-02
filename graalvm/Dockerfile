FROM ghcr.io/graalvm/graalvm-ce:ol7-java11-20.3.4

LABEL maintainer="devatherock@gmail.com"

RUN gu install native-image

RUN yum -y install git \
  && yum -y install perl-Digest-SHA \
  && rm -rf /var/cache/yum