# haproxy
#
# VERSION               1.0
#
#
#  based on https://registry.hub.docker.com/u/dockerfile/haproxy/dockerfile/

# Pull base image.
FROM ubuntu:14.10

MAINTAINER Julien Rottenberg <julien@rottenberg.info>

ENV DEBIAN_FRONTEND noninteractive

# Install Haproxy.
RUN \
    apt-get update && \
    apt-get install -y haproxy && \
    rm -rf /var/lib/apt/lists/*


# Define default command.
ENTRYPOINT haproxy  -f /haproxy.cfg 

# Expose ports.
EXPOSE 80
