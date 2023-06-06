[![Docker Pulls](https://img.shields.io/docker/pulls/devatherock/graalvm.svg)](https://hub.docker.com/r/devatherock/graalvm/)
[![Docker Image Size](https://img.shields.io/docker/image-size/devatherock/graalvm.svg?sort=date)](https://hub.docker.com/r/devatherock/graalvm/)
# graalvm
A docker image containing graalvm, native-image, tar, xz, gzip and upx. 
  - `gzip` and `tar` are needed for [CircleCI](https://circleci.com/docs/custom-images/#required-tools-for-primary-containers). 
  - `xz` is needed for installing `upx`
  - `upx` is needed for [java-to-native](https://github.com/devatherock/java-to-native)