ARG BASE_IMAGE=native-image
ARG BASE_IMAGE_VERSION=ol8-java17-22.3.2
FROM ghcr.io/graalvm/$BASE_IMAGE:$BASE_IMAGE_VERSION

LABEL maintainer="devatherock@gmail.com"

RUN microdnf -y install tar \
  && microdnf -y install gzip \
  && microdnf -y install xz \
  && microdnf -y install findutils \
  && microdnf -y install make gcc \
  && microdnf clean all

RUN curl -o /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/centos/docker-ce.repo \
  && microdnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
  && microdnf clean all

ARG UPX_VERSION=3.96
ARG TARGETPLATFORM

RUN case ${TARGETPLATFORM:-linux/amd64} in \
        "linux/arm64")   UPX_ARCH="arm64" ;; \
        *)               UPX_ARCH="amd64" ;; \
    esac; \
    curl --location --output upx_linux.tar.xz "https://github.com/upx/upx/releases/download/v${UPX_VERSION}/upx-${UPX_VERSION}-${UPX_ARCH}_linux.tar.xz"; \
	tar -xJf upx_linux.tar.xz; \
	cp upx-${UPX_VERSION}-${UPX_ARCH}_linux/upx /bin/