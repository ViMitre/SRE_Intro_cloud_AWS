!#/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo apt-get install tmux -y
sudo apt-get install npm -y
sudo apt-get install python-software-properties
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
cd /home/vagrant/app
sudo npm install pm2 -g
npm install
export DB_HOST=192.168.10.150:27017/posts
echo "export DB_HOST=192.168.10.150:27017/posts" >> ~/.bashrc
source ~/.bashrc

# sudo apt-get install git-core zsh -y
# sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -y)"
# sudo apt-get install fonts-powerline -y

