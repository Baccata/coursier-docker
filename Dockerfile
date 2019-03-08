FROM openjdk:8u181-jdk-slim

RUN apt-get update
RUN apt-get -y install curl
RUN sh -c '(echo "#!/usr/bin/env sh" && curl -L https://git.io/coursier-cli) > /usr/local/bin/coursier && chmod +x /usr/local/bin/coursier'

CMD ["coursier", "--help"]
