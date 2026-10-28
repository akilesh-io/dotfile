#!/usr/bin/env bash
set -e
source /etc/os-release

case "$ID" in
    ubuntu|debian|linuxmint|pop) sudo apt update && sudo apt install -y stow ;;
    fedora|rhel|centos|rocky|almalinux|ol) if command -v dnf >/dev/null; then sudo dnf install -y stow; else sudo yum install -y stow; fi ;;
    arch|manjaro|endeavouros) sudo pacman -Syu --needed stow ;;
    opensuse*|sles) sudo zypper install -y stow ;;
    *) echo "Unsupported OS: $ID"; exit 1 ;;
esac

stow tmux
stow alacritty 
# stow nvim 

