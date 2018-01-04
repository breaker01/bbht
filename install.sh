echo "Updating repos and OS, please wait."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
echo "Repos and OS updated!"

echo "Installing libraries, Ruby, PHP, etc..."
sudo apt-get install python3-pip -y
sudo apt install python-pip -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install php -y
echo "Libraries, Ruby, PHP, etc installed!"

echo "Ready to install tools..."

echo "Installing awscli..."
pip install awscli
echo "AWS CLI installed!"
echo "Don't forget to set up AWS credentials using the `aws configure` command!"

cd /opt

echo "Installing 230-OOB..."
sudo git clone https://github.com/sxcurity/230-OOB
sudo chmod +x 230-OOB/230.py
echo "230-OOB installed!"

echo "Installing Alive-Host..."
sudo git clone https://github.com/sxcurity/alive-host
sudo chmod +x alive-host/alive.sh
echo "Alive-Host installed!"

echo "Installing Tomcat-CVE-2017-12617..."
sudo git clone https://github.com/cyberheartmi9/CVE-2017-12617
sudo chmod +x CVE-2017-12617/tomcat-cve-2017-12617.py
echo "Tomcat-CVE-2017-12617 installed!"

echo "Installing Dirsearch..."
sudo git clone https://github.com/maurosoria/dirsearch
echo "Dirsearch installed!"

echo "Installing DomainWatch..."
sudo git clone https://github.com/ebelties/DomainWatch
sudo chmod +x DomainWatch/domainwatch.sh
echo "DomainWatch installed!"

echo "Installing GitTools..."
sudo git clone https://github.com/internetwache/GitTools
echo "GitTools installed!"

#echo "Installing GoBuster...!"
#sudo git clone https://github.com/OJ/gobuster
#sudo apt-get install golang-go
#sudo wget https://redirector.gvt1.com/edgedl/go/go1.9.2.linux-amd64.tar.gz
#sudo tar -C /usr/local/ -xzf go1.9.2.linux-amd64.tar.gz
#cd gobuster

echo "Installing HostileSubBruteforcer..."
sudo git clone https://github.com/nahamsec/HostileSubBruteforcer
sudo chmod +x HostileSubBruteforcer/sub_brute.rb
echo "HostileSubBruteForcer installed!"

echo "Installing JSParser..."
sudo git clone https://github.com/nahamsec/JSParser.git
sudo chmod +x JSParser/*.py
cd JSParser
sudo python setup.py install
cd ~/tools/
echo "JSParser installed!"

echo "Installing Liffy..."
sudo git clone https://github.com/hvqzao/liffy
sudo chmod +x liffy/*.py

echo "Installing Parameth..."
sudo git clone https://github.com/maK-/parameth
echo "Parameth installed!"

echo "Installing Relative-URL-Extractor..."
sudo git clone https://github.com/jobertabma/relative-url-extractor
sudo chmod +x relative-url-extractor/*.rb
echo"Relative-URL-Extractor installed!"

echo "Installing S3Cruze..."
sudo git clone https://github.com/JR0ch17/S3Cruze/
sudo chmod +x S3Cruze/*.py
echo "S3Cruze installed!"

echo "Cloning the SecLists repo..."
sudo git clone https://github.com/danielmiessler/SecLists
echo "SecLists cloned!"

echo "Installing SQLmap..."
sudo git clone https://github.com/sqlmapproject/sqlmap
echo "SQLmap installed!"

echo "Installing struts-pwn..."
sudo git clone https://github.com/mazen160/struts-pwn
echo "Struts-pwn installed!"

echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r/
sudo pip install -r requirements.txt
cd ../
echo "done"

echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "done"

echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
gem install bundler && bundle install --without test
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"

echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "done"

echo "installing knock.py"
sudo apt-get install python-dnspython
git clone https://github.com/guelfoweb/knock.git
cd ~/tools/
echo "done"


echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in /opt"
ls -la
