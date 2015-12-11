FROM ubuntu:15.04
MAINTAINER John Oram <john@oram.ca>

RUN wget https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.1.0/elasticsearch-2.1.0.deb
RUN dpkg -i elasticsearch-2.1.0.deb

CMD bin/elasticsearch -d