FROM gitpod/workspace-mongodb

RUN set -ex; \
    sudo apt-get update; \
    sudo apt-get install -y zsh

RUN set -ex; \
    wget -q https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh; \
    sh install.sh --unattended; \
    rm -f install.sh
