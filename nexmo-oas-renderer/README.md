[![Docker Pulls](https://img.shields.io/docker/pulls/devatherock/nexmo-oas-renderer.svg)](https://hub.docker.com/r/devatherock/nexmo-oas-renderer/)
[![Docker Image Size](https://img.shields.io/docker/image-size/devatherock/nexmo-oas-renderer.svg?sort=date)](https://hub.docker.com/r/devatherock/nexmo-oas-renderer/)
# nexmo-oas-renderer
Customized [nexmo-oas-renderer](https://github.com/Nexmo/nexmo-oas-renderer) image that can visualize yaml api specs from a git repo.

## Usage

- Run a command similar to below:

```
docker run --rm \
    -p 4567:4567 \
    -e OAS_PATH=/definitions/nexmo-oas-renderer/samples/vonage \
    -e OAS_GIT_PATH=https://github.com/Nexmo/nexmo-oas-renderer.git \
    devatherock/nexmo-oas-renderer:2.4.1-1
```

- View the specs at `http://localhost:4567`

## Environment variables

| Name                                  |   Required   |   Description                                                                     |
|---------------------------------------|--------------|-----------------------------------------------------------------------------------|
| OAS_GIT_PATH                          |   false      |   The HTTP git clone URL of the repo containing the api specs                     |
| OAS_PATH                              |   true       |   Path within the docker image where the api specs are. When used with `OAS_GIT_PATH`, should be of the format `/definitions/<git-repo-name>/<path to subfolder within repo that contains specs> |