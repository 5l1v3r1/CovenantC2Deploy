# install docker and run covenant on Kali 2019.4
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

mkdir /pentest
cd /pentest
git clone --recurse-submodules https://github.com/cobbr/Covenant
cd Covenant/Covenant
docker build -t covenant .
#run docker image
docker run -it -p 7443:7443 -p 80:80 -p 443:443 --name covenant -v /pentest/Covenant/Covenant/Data covenant
