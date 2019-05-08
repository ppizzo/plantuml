FROM maven as builder

RUN git clone https://github.com/plantuml/plantuml-server.git /src/plantuml-server
RUN cd /src/plantuml-server && mvn package

FROM tomcat:slim

MAINTAINER Pietro Pizzo <pietro.pizzo@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y graphviz
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/*

COPY --from=builder /src/plantuml-server/target/plantuml.war /usr/local/tomcat/webapps/
