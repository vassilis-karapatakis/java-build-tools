FROM maven:3.9.4-eclipse-temurin-8
LABEL maintainer="Vassilis Karapatakis <vassilis.karapatakis@iteam.gr>"

##########
# Node.js
##########
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
