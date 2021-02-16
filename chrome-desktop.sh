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
git clone https://github.com/evandrocoan/MyLinuxSettings.git /maple/Downloads/MyLinuxSettings')
rsync -r -t -v -s /maple/Downloads/MyLinuxSettings/ /maple/')
git config --global core.excludesfile /maple/.gitignore_global')
chmod 600 /maple/.ssh/config
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser maple chrome-remote-desktop
git clone https://github.com/hackingguy/Bug-Hunting-Colab
cd Bug-Hunting-Colab/config
chmod +x switch
