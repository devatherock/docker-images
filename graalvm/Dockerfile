FROM ghcr.io/graalvm/native-image:ol8-java11-22.1.0

LABEL maintainer="devatherock@gmail.com"

RUN microdnf -y install tar \
  && microdnf -y install gzip \
  && microdnf -y install xz \
  && microdnf clean all \
  && curl --location --output upx-3.96-amd64_linux.tar.xz "https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz" \
	&& tar -xJf upx-3.96-amd64_linux.tar.xz \
	&& cp upx-3.96-amd64_linux/upx /bin/