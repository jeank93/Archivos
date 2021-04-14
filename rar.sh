VERSION=6.0.1
wget -qO- https://www.rarlab.com/rar/rarlinux-x64-${VERSION}.tar.gz | tar -xz
cd rar

chmod +x rar unrar
sudo mv rar unrar /usr/bin
sudo mv rarfiles.lst /etc

wget -O rarreg.key https://pastebin.com/raw/Ed7iQSPm
sudo mv default.sfx rarreg.key /usr/local/lib

cd ..
rm -r rar
exec bash
