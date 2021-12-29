sudo apt update
sudo apt upgrade -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip.1 > /dev/null 2>&1
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3389 &>/dev/null &
sudo apt install openjdk-11-jdk -y
sudo apt install unzip
sudo apt install firefox -y
sudo apt install -y xrdp
sudo apt install xfce4 -y
sudo apt-get install xfce4 xfce4-terminal -y
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
