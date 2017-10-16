FROM zhanyi/jenkins-jnlp-slave

MAINTAINER yi zhan <zyzy257@gmail.com>

USER root

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install PyYAML python-jinja2 python-httplib2 python-keyczar python-paramiko python-setuptools git python-pip && \
    mkdir /etc/ansible/ && \
    echo -e '[local]\nlocalhost' > /etc/ansible/hosts && \
    pip install ansible && \
    yum clean all

USER jenkins
    
