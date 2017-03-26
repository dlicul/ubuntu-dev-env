#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

apt-get remove docker docker-engine
apt-get update

# install docker engine
curl -o /tmp/docker.deb https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_17.03.0~ce-0~ubuntu-xenial_amd64.deb
apt-get -f install
dpkg -i /tmp/docker.deb
docker --version

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.11.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
