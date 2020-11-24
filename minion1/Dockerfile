FROM centos:latest
LABEL maintainer="jonathan.demasi@invitae.com"

RUN dnf update -y
RUN yum install -y https://repo.saltstack.com/py3/redhat/salt-py3-repo-latest.el8.noarch.rpm
RUN yum install -y salt-minion
RUN echo "master: master" >> /etc/salt/minion
RUN echo "id: minion1" >> /etc/salt/minion
CMD salt-minion -c /etc/salt
