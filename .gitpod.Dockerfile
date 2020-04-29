FROM gitpod/workspace-mongodb

RUN set -ex; \
    sudo apt-get update; \
    sudo apt-get install -y zsh

RUN set -ex; \
    wget -q https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh; \
    sh install.sh --unattended; \
    rm -f install.sh; \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting; \
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; \
    sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="agnoster"' ~/.zshrc; \
    sed -i '/plugins=(git)/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' ~/.zshrc; \
    sudo chsh -s /usr/bin/zsh

RUN set -ex;\ 
    wget -q https://github.com/microsoft/cascadia-code/releases/download/v1911.21/CascadiaMonoPL.ttf; \
    sudo mv CascadiaMonoPL.ttf /usr/local/share/fonts
