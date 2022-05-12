FROM ghcr.io/graalvm/native-image:ol8-java11-22.1.0

LABEL maintainer="devatherock@gmail.com"

RUN microdnf -y install tar \
  && microdnf -y install gzip \
  && microdnf clean all