# install docker on Kali 2019.4
# mRr3b00t
# version 0.1

#add docker to source lists
#add docker gpg key

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list

apt-get update

#install docker
apt-get install docker-ce -y

#start docker using systemctl
systemctl start docker

#set docker to start on boot using systemctl
systemctl enable docker
