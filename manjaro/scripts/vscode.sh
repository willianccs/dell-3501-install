#!/usr/bin/env bash

install() {
    cd ~/tmp
    git clone https://aur.archlinux.org/visual-studio-code-bin.git
    cd visual-studio-code-bin/
    makepkg -si
}

tunning() {
    echo fs.inotify.max_user_watches=524288 | sudo tee \
      /etc/sysctl.d/40-max-user-watches.conf && sudo sysctl --system
}

case "${1}" in
    "install"|"-i")
        install
	;;
    "tunning"|"config")
	tunning
	;;
    *)
        echo "Wrong option."
	exit 1
	;;
esac
