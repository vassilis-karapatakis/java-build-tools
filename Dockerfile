FROM maven:3.8.6-jdk-8-slim
LABEL maintainer="Vassilis Karapatakis <vassilis.karapatakis@iteam.gr>"

##########
# Node.js
##########
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
