FROM zhanyi/cpp-centos7

AINTAINER yi.zhan <zyzy257@gmail.com>

RUN yum install -y pcre-devel openssl-devel &&\
	yum clean all &&\
	rm -rf /tmp/*
  
WORKDIR /tmp
CMD /bin/bash
