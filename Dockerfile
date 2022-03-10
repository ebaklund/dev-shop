# ubuntu really
FROM ubuntu:20.04

# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
RUN apt-get update
RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt-cache policy docker-ce
RUN apt install -y docker-ce

# https://k3d.io/v5.3.0
#RUN curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | TAG=v5.3.0 bash
RUN curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash
