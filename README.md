# Docker-avro-tools

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/kpnnv/avro-tools?label=latest%20version)

Container image for [avro-tools](https://dlcdn.apache.org/avro/avro-1.11.0/java/https://github.com/apache/avro)

avro-tools is part of the [avro](https://dlcdn.apache.org/avro/avro-1.11.0/java/) library

## Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

## How to create a new release

The idea of this repository is for the maintainers to trigger a github action,
in order to release a new version of the container, **if** there's a new version of the tool.

If you are not a maintainer, open a new issue and we will release a new version.

To release a new version:

1. Go to the [Publish Docker image](https://github.com/kpn/docker-avro-tools/actions/workflows/publish-container.yml) action
1. Click in `Run workflow`
1. Set the `Version to release`

![Input action example](/docs/img/version-to-release.png)

Check for new versions:

- [avro-tools releases](https://avro.apache.org/docs/current/gettingstartedjava.html)

## Usage examples

### Pull image

```sh
docker pull kpnnv/avro-tools:1.10.0
```

### AVDL to AVSC conversion example

Use to validate avro json schemas:

```sh
docker run --rm --user="$(id -u)" -v "$(pwd)":/avro \
    kpnnv/avro-tools:1.10.0 \
    idl2schemata {file}.avdl {target-folder}
```

### Help

Use to validate avro json schemas:

```sh
docker run --rm kpnnv/avro-tools
```

## Acknowledgments

* Docker image forked from [brandonstubbs/avro-tools](https://github.com/brandonstubbs/docker-avro-tools)
we republish it for our convinience