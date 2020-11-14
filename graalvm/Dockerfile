FROM oracle/graalvm-ce:20.2.0-java11

LABEL maintainer="devatherock@gmail.com"

RUN gu install native-image

RUN yum -y install git \
  && yum -y install perl-Digest-SHA \
  && rm -rf /var/cache/yum