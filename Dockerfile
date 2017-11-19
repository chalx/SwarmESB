FROM  centos:centos7
COPY . /SwarmESB

RUN yum install -y epel-release
RUN yum install -y nodejs git redis

RUN cd /SwarmESB && npm dedupe
RUN npm install http-server -g

CMD ["/bin/bash", "/SwarmESB/docker/start.sh"]
