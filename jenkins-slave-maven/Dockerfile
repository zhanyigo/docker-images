FROM jenkinsci/jnlp-slave:3.16-1-alpine

MAINTAINER yi zhan <zyzy257@gmail.com>

ADD curl -L http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz -o /tmp 
  && tar xzvf /tmp/apache-maven-3.5.2-bin.tar.gz \
  && cp -r /tmp/apache-maven-3.5.2/* /usr/local \
  && rm -rf /tmp/apache-maven-3.5.2 \
  && chmod -R 755 /usr/local
