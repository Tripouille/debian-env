FROM debian:buster

RUN apt update && apt upgrade
RUN apt install -y build-essential clang valgrind
RUN apt install -y zsh curl git && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="candy"/' ~/.zshrc