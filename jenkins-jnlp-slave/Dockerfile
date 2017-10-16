FROM centos:centos7
MAINTAINER yi zhan <zyzy257@gmail.com>

ENV HOME /home/jenkins
LABEL Description="This is a base image, which provides the Jenkins agent executable (slave.jar)" Vendor="Jenkins project" Version="3.10"
ARG VERSION=3.10
ARG AGENT_WORKDIR=/home/jenkins/agent

COPY jenkins-slave /usr/local/bin/jenkins-slave
RUN yum install -y java && groupadd -g 10000 jenkins && useradd -c "Jenkins user" -d $HOME -u 10000 -g 10000 -m jenkins && curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /usr/share/jenkins \
  && chmod 644 /usr/share/jenkins/slave.jar \
  && chmod 755 /usr/local/bin/jenkins-slave

USER jenkins
ENV AGENT_WORKDIR=${AGENT_WORKDIR}
RUN mkdir /home/jenkins/.jenkins && mkdir -p ${AGENT_WORKDIR}

VOLUME /home/jenkins/.jenkins
VOLUME ${AGENT_WORKDIR}
WORKDIR /home/jenkins

ENTRYPOINT ["jenkins-slave"]
