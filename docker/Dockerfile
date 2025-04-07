FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

# Update
RUN apt-get -y update && apt-get -y dist-upgrade

# Install some prerequisites and utils
RUN apt-get -y install \
    curl \
    gnupg2 \
    lsb-release \
    software-properties-common \
    neovim \
    openssh-client \
    jq \
    make \
    openssl \
    git

COPY ./docker-entry.sh /docker-entry.sh
RUN chmod +x /docker-entry.sh

CMD ["/docker-entry.sh"]
