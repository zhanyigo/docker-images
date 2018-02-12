FROM jenkinsci/jnlp-slave:3.16-1-alpine

MAINTAINER yi zhan <zyzy257@gmail.com>

USER root

COPY jenkins-slave /home/jenkins/jenkins-slave

RUN wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.5.2/binaries/apache-maven-3.5.2-bin.tar.gz -O /tmp/apache-maven-3.5.2-bin.tar.gz \
  && tar xzvf /tmp/apache-maven-3.5.2-bin.tar.gz -C /tmp \
  && cp -r /tmp/apache-maven-3.5.2/* /home/jenkins \
  && mv /home/jenkins/jenkins-slave /home/jenkins/bin \
  && rm -rf /tmp/apache-maven-3.5.2 /tmp/apache-maven-3.5.2-bin.tar.gz \
  && chown -R jenkins:jenkins /home/jenkins \
  && chmod -R 755 /home/jenkins/bin

USER jenkins

ENV PATH=${PATH}:/home/jenkins/bin
ENV M2_HOME=/home/jenkins
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

ENTRYPOINT ["jenkins-slave"]
