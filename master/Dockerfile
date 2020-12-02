FROM centos:latest
LABEL maintainer="jonathan.demasi@invitae.com"

RUN dnf update -y
RUN yum install -y https://repo.saltstack.com/py3/redhat/salt-py3-repo-latest.el8.noarch.rpm
RUN yum install -y salt-master
RUN echo "auto_accept: True" >> /etc/salt/master
COPY ./master.conf /etc/salt/master
CMD salt-master -c /etc/salt
