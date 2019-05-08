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
The image is stateless, just run it by exposing the `8080` port on the host:
```bash
$ docker run -d --name plantuml -p 8080:8080 ppizzo/plantuml
```
and use a web browser to access the `/plantuml` context root at the following local URL (your actual URL may vary based on your setup):

[http://localhost:8080/plantuml](http://localhost:8080/plantuml)

If you're running Swarm, Kubernetes or another orchestrated enterprise-grade platform, please create the required deployment descriptors. If running on a remote engine, you must adapt the above URL to your setup (i.e.: if using a load balancer, a reverse proxy, a direct engine connection, etc.).

This repository contains a basic `docker-compose.yml` you can use on a stand alone Docker engine or on a Swarm cluster.

## References
* [PlantUML](http://plantuml.com/)
* [Docker](https://www.docker.com/)
