FROM ubuntu:15.04
MAINTAINER John Oram <john@oram.ca>

#########
# install all aptitude packages
#########
RUN apt-get -y update
RUN apt-get -y upgrade
ADD requirements_apt.txt /requirements_apt.txt
RUN cat /requirements_apt.txt | xargs apt-get install -y


RUN wget https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.1.0/elasticsearch-2.1.0.deb
RUN dpkg -i elasticsearch-2.1.0.deb

RUN touch /var/log/elasticsearch.error

CMD bin/elasticsearch -d && tail -f /var/log/elasticsearch.error
