FROM pataquets/ubuntu:trusty

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get -y install \
		openstack-dashboard \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*
