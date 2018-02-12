FROM jenkinsci/jnlp-slave:3.16-1-alpine

MAINTAINER yi zhan <zyzy257@gmail.com>

COPY jenkins-slave /home/jenkins/bin/jenkins-slave
RUN wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz -O /tmp/apache-maven-3.5.2-bin.tar.gz \
  && tar xzvf /tmp/apache-maven-3.5.2-bin.tar.gz -C /tmp \
  && cp -r /tmp/apache-maven-3.5.2/* /home/jenkins \
  && rm -rf /tmp/apache-maven-3.5.2 /tmp/apache-maven-3.5.2-bin.tar.gz \
  && chmod -R 755 /home/jenkins/bin

ENV PATH=${PATH}:/home/jenkins/bin
ENV M2_HOME=/home/jenkins

ENTRYPOINT ["jenkins-slave"]
