FROM centos:7

MAINTAINER yi.zhan <zyzy257@gmail.com>

RUN yum install -y  gcc-c++.x86_64 make autoconf automake autogen wget openssl-devel pcre-devel &&\
	yum clean all &&\
	rm -rf /tmp/*
  
WORKDIR /tmp
CMD /bin/bash

