FROM maven:3.6-jdk-14

###########
# Node.js
###########
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash \
    && apt-get install -y nodejs
