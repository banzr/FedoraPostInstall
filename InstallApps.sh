#!/bin/bash


### Installs collection of Apps
sudo dnf update

### Repositories

# RPMFusion
su -c 'yum install --nogpgcheck \
http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E\
 %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusi\
on-nonfree-release-$(rpm -E %fedora).noarch.rpm'/

# Google
su -c 'cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF'

# Numix
dnf copr -y enable satya164/numix

sudo dnf update

### Group Install
sudo dnf groupinstall -y 'Development Tools' 'Fedora Eclipse' \
'Engineering and Scientific'

### Apps
sudo dnf install -y \
google-chrome-stable \
unrar \
p7zip \
pithos \
gnome-tweak-tool \
numix-icon-theme-circle \
https://github.com/atom/atom/releases/download/v1.1.0/atom.x86_64.rpm \
vlc \
steam \
nautilus-open-terminal \
deluge \
snes9x \
yumex-dnf \
mariadb-server \
httpd \
php php-mysql

## Guide to setup LAMP
google-chrome-stable https://www.atlantic.net/community/howto/install-lamp-fedora-22/
