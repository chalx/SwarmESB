FROM ubuntu:17.10
COPY . /SwarmESB

RUN apt-get update
RUN apt-get install -y nodejs git redis-server npm

CMD ["/bin/sh", "/SwarmESB/quickrun.sh"]
