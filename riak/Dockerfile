FROM ubuntu:16.04

ENV RIAK_VERSION 2.2.0-1
ENV DEBIAN_FRONTEND noninteractive
#ENV PATH /usr/sbin:$PATH

# Copy config
COPY riak_setup.sh /riak_setup.sh

RUN \
	apt-get update && \
	apt-get install -y apt-utils software-properties-common python-software-properties curl && \
	# Download and Install Java8
	apt-add-repository ppa:webupd8team/java -y && apt-get update -qq && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
	apt-get install -y oracle-java8-installer && \
	# Download and Install Riak
	curl -s https://packagecloud.io/install/repositories/basho/riak/script.deb.sh | bash && \
	apt-get install -y riak=${RIAK_VERSION} #&& \
	# Cleanup
	apt-get clean &&\
	apt-get autoremove

USER riak
# Start Service
CMD ["riak start"]


