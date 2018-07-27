FROM centos:7

MAINTAINER yi zhan <zyzy257@gmail.com>

USER root

RUN yum -y install epel-release && \
  yum -y install python-pip gcc-c++ cmake cmake3 automake autoconf libtool && \
  pip install conan && \
  chmod -R 755 /bin/conan /usr/lib/python2.7 /usr/lib64/python2.7 \
  yum clean all

ENTRYPOINT ["/bin/bash"]
