FROM openjdk:8u181-jdk-slim

ARG DOCKER_TAG

RUN apt-get update
RUN apt-get -y install curl
RUN sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/coursier/coursier/releases/download/v${DOCKER_TAG}/coursier) > /usr/local/bin/coursier && chmod +x /usr/local/bin/coursier'

CMD ["coursier", "--help"]


