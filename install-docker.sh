#!/usr/bin/env bash
apt-get update
apt-get upgrade -y
apt-get install -y \
     apt-transport-https \
     ca-certificates \
     curl \
     jq \
     gnupg2 \
     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install -y docker-ce=17.09.0~ce-0~debian
