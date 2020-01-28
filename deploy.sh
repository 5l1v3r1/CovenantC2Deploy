# Covenant C2 on KALI (2019.4)
# version 0.1 mRr3b00t
# 28-01-2019
# www.pwndefend.com
# 'hack for good!'


wget -q https://packages.microsoft.com/config/ubuntu/19.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update

apt-get install dotnet-sdk-2.2 -y
apt-get install dotnet-sdk-2.1 -y

mkdir /pentest
cd /pentest
git clone --recurse-submodules https://github.com/cobbr/Covenant
cd Covenant/Covenant
dotnet build
dotnet run
