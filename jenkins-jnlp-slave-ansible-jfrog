FROM zhanyi/jenkins-jnlp-slave-ansible

RUN mkdir /home/jenkins/bin && cd /home/jenkins/bin && curl -fL https://getcli.jfrog.io | sh

ENV PATH ${PATH}:/home/jenkins/bin
