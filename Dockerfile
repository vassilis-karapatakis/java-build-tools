FROM maven:3.8.1-jdk-8-slim
LABEL maintainer="Vassilis Karapatakis <vassilis.karapatakis@iteam.gr>"

###########
# Node.js
###########
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash \
    && apt-get install -y nodejs
