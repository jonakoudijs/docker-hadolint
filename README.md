[![Test Status](https://img.shields.io/circleci/project/github/jonakoudijs/docker-hadolint.svg?label=test)](https://circleci.com/gh/jonakoudijs/docker-hadolint)
[![Build Status](https://img.shields.io/docker/build/jonakoudijs/hadolint.svg?label=build)](https://hub.docker.com/r/jonakoudijs/hadolint/builds)
[![Image Size](https://images.microbadger.com/badges/image/jonakoudijs/hadolint.svg)](https://microbadger.com/images/jonakoudijs/hadolint)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)

# Hadolint Docker Image

Hadolint on Alpine for linting Dockerfiles

## Usage

#### Test interactively
```
docker run -it jonakoudijs/hadolint /bin/sh
```
#### Run basic Hadolint command
```
docker run -it -v "$(pwd)/Dockerfile":/Dockerfile jonakoudijs/hadolint
```
#### Run Hadolint in git repository
```
docker run -it -v "$(pwd)/Dockerfile":/Dockerfile jonakoudijs/hadolint git ls-files --exclude='Dockerfile*' --ignored | xargs hadolint Dockerfile
```
#### Run Hadolint with custom configuration
```
docker run -it -v "$(pwd)/Dockerfile":/Dockerfile -v "/path/to/hadolint.yaml":/root/hadolint.yaml jonakoudijs/hadolint hadolint --config /root/hadolint.yaml Dockerfile
```

## License

[MIT license](LICENSE.md)
