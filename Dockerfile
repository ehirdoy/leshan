#
# Copyright (c) 2017 Ericsson AB
# All rights reserved.
#
# Author: Hiroshi Doyu <hiroshi.doyu@ericsson.com>
#
FROM azul/zulu-openjdk:8

RUN apt-get update && apt-get install -y \
	openssh-client \
	jq \
	curl \
	sudo

RUN mkdir -p /demo
EXPOSE 8080
EXPOSE 5683
WORKDIR /demo

COPY \
./leshan-server-demo/target/leshan-server-demo-1.0.0-SNAPSHOT-jar-with-dependencies.jar \
./leshan-client-demo/target/leshan-client-demo-1.0.0-SNAPSHOT-jar-with-dependencies.jar \
/demo/
