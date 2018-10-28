FROM       maven:3.3.9-jdk-8
MAINTAINER yi.zhan <zyzy257@gmail.com>

RUN apt-get install -y curl
# install node.js
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs python g++ build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g yo bower gulp yarn
