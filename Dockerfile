FROM maven:3.9.8-eclipse-temurin-22
LABEL maintainer="Vassilis Karapatakis <vassilis.karapatakis@iteam.gr>"

##########
# Node.js
##########
ARG NODE_MAJOR=20

RUN apt-get update \
    && apt-get install -y gnupg --no-install-recommends \
    && mkdir -p /etc/apt/keyrings \
    && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    && apt-get install -y nodejs
