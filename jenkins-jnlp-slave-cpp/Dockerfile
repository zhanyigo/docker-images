FROM zhanyi/jenkins-jnlp-slave

MAINTAINER yi zhan <zyzy257@gmail.com>

LABEL Description="Jenkins slave for cpp ci" Vendor="zyzy257" Version="1.0"
ARG CONAN_VERSION=1.6

# prepare for cpp ci

USER root

RUN yum -y install epel-release && \
  yum -y install python-pip gcc-c++ cmake cmake3 make automake autoconf libtool wget tree doxygen graphviz texlive texlive-utils && \
  pip install conan==${CONAN_VERSION} && \
  chmod -R 755 /bin/conan /usr/lib/python2.7 /usr/lib64/python2.7 && \
  yum clean all

# prepare for jenkins slave

USER jenkins
