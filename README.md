# PlantUML
## Description
Docker image with PlantUML.

## Prerequisites
You must have a working Docker installation and basic knowledge of PlantUML usage.

## Building
You can use a pre-built Docker image from the following repository:

[https://hub.docker.com/r/ppizzo/plantuml](https://hub.docker.com/r/ppizzo/plantuml)

or build it by yourself with the following command:

```bash
$ docker build -t ppizzo/plantuml .
```

## Usage
The image is stateless, just run it by exposing the `8080` port on the host and access it using a web browser:
```bash
$ docker run -d --name plantuml -p 8080:8080 ppizzo/plantuml
```
If you're running Swarm, Kubernetes or another orchestrated enterprise-grade platform, please create the required deployment descriptors.

This repository contains a basic `docker-compose.yml` you can use on a stand alone Docker engine or on a Swarm cluster.

## References
* [PlantUML](http://plantuml.com/)
* [Docker](https://www.docker.com/)
