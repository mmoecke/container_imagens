# Dockerfile for building rfabelhas container.
# Collect data from TTN DB and post it in InfluxDB
#
# Version  0.1
FROM debian:stretch

MAINTAINER Marcos Moecke <moecke@ifsc.edu.br>

COPY start.services /etc/init.d/start.services
COPY docker-entrypoint.sh /

RUN apt update && \
    apt upgrade -y && \
    apt purge -y ssh openssh-server && \
    chmod 0755 /docker-entrypoint.sh && \
    chmod 0755 /etc/init.d/start.services

EXPOSE 21 111 2049 8083 44383 69/udp

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD /usr/sbin/bash -D FOREGROUND
