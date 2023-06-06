# Changelog

## 2023-06-06
### Changed
- Created 3 different multiarch images for graalvm

## 2023-06-03
### Changed
- Base image version of graalvm to `ol8-java17-22.3.2`
- Docker executor to `cimg/openjdk:17.0`
- Docker login to use `--password-stdin`
- [#15](https://github.com/devatherock/docker-images/issues/15): Built multi-arch docker images
- Created separate image for each architecture

## 2023-05-28
### Changed
- Parameterized CircleCI jobs to avoid duplication
- Stopped publishing `java-with-docker` image
- Updated dockerhub readme in CI pipeline

## 2023-05-06
### Changed
- Base image version of graalvm to `ol8-java17-22.1.0`

## 2023-04-30
### Changed
- Base image version of graalvm to `ol8-java17-22.3.2`

## 2022-05-18
### Added
- [#8](https://github.com/devatherock/docker-images/issues/8) - `upx` to graalvm image

## 2022-05-12
### Changed
- Base image of graalvm to `ghcr.io/graalvm/native-image:ol8-java11-22.1.0` and installed `tar` in the image

## 2021-11-04
### Added
- [#4](https://github.com/devatherock/docker-images/issues/4) - Rebuilt `devatherock/nexmo-oas-renderer` image using `ruby:2.7.2-slim` base, to reduce image size from 979 MB to 409 MB. Couldn't get the build working with alpine

## 2021-11-02
### Added
- `devatherock/nexmo-oas-renderer` to visualize api specs from a git repo

### Changed
- Base image of graalvm to `ghcr.io/graalvm/graalvm-ce:ol7-java11-20.3.4`

## 2020-11-14
### Added
- `shasum` to `devatherock/graalvm`

## 2020-11-13
### Added
- `devatherock/graalvm` containing graalvm, `native-image` and `git`

## 2020-06-20
### Added
- A docker image containing java 11 and docker