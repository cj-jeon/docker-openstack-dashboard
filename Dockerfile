FROM pataquets/ubuntu:trusty

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      openstack-dashboard \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Apache2 required environment variables
ENV APACHE_LOG_DIR /var/log
ENV APACHE_LOCK_DIR /var/lock
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

CMD [ "apache2", "-D", "FOREGROUND" ]

EXPOSE 80
