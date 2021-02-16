sudo useradd -m maple
sudo adduser maple sudo
echo 'maple:123456' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive
apt install --assume-yes xfce4 desktop-base xfce4-whiskermenu-plugin
git clone https://github.com/evandrocoan/MyLinuxSettings.git /home/maple/Downloads/MyLinuxSettings
rsync -r -t -v -s /home/maple/Downloads/MyLinuxSettings/ /home/maple/
git config --global core.excludesfile /home/maple/.gitignore_global
chmod 600 /home/maple/.ssh/config
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo add-apt-repository -y ppa:embrosyn/cinnamon
sudo apt update
sudo apt install -y gnome-system-monitor gnome-terminal gedit nemo rar axel xfce4-screenshooter
sudo adduser maple chrome-remote-desktop
