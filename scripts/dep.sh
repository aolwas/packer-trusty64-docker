#!/bin/bash
#
# Setup the the box. This runs as root

apt-get -y update

apt-get -y install curl wget

# Install Docker
wget -qO- https://get.docker.com/ | sh

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.3.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
