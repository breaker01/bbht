echo "Updating repos and OS, please wait."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
echo "Repos and OS updated!"

echo "Installing libraries, Ruby, PHP, Perl, etc..."
sudo apt-get install python3-pip -y
sudo apt-get install python-pip -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y
sudo apt-get install build-essential libffi-dev python-dev -y
sudo apt-get install php -y
echo "Libraries, Ruby, PHP, etc installed!"

echo "Ready to install tools..."

echo "Installing AWSCLI..."
sudo pip install awscli
sudo apt-get install awscli
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

echo "Installing BFAC..."
sudo git clone https://github.com/mazen160/bfac
cd bfac/
sudo python setup.py install
cd ../
echo "BFAC installed!"

echo "Installing C5Scan..."
sudo pip install httplib2 requests
sudo git clone https://github.com/auraltension/c5scan
echo "C5Scan installed!"

echo "Installing Clusterd..."
sudo git clone https://github.com/hatRiot/clusterd
echo "Clustered installed
echo "Installing CMSFuzz..."
sudo git clone https://github.com/nahamsec/CMSFuzz
sudo chmod +x CMSFuzz/dirbf.rb
echo "CMSFuzz installed!"

echo "Installing Dirsearch..."
sudo git clone https://github.com/maurosoria/dirsearch
echo "Dirsearch installed!"

echo "Installing DomainWatch..."
sudo git clone https://github.com/ebelties/DomainWatch
sudo chmod +x DomainWatch/domainwatch.sh
echo "DomainWatch installed!"

echo "Installing DroopeScan..."
sudo pip install droopescan
echo "DroopeScan installed!"

echo "Installing EyeWitness..."
sudo git clone https://github.com/ChrisTruncer/EyeWitness
echo "EyeWitness installed!"

echo "Installing Fuxsploider..."
sudo git clone https://github.com/almandin/fuxploider
cd fuxploider
sudo pip3 install -r requirements.txt
cd ../
echo "Fuxploider installed!"

echo "Installing GitLeaks..."
sudo git clone https://github.com/zricethezav/gitleaks
cd gitleaks
go get -u github.com/zricethezav/gitleaks
go build github.com/zricethezav/gitleaks
cd ../
echo "GitLeaks installed!"

echo "Installing GitTools..."
sudo git clone https://github.com/internetwache/GitTools
echo "GitTools installed!"

echo "Installing GoBuster...!"
sudo git clone https://github.com/OJ/gobuster
cd gobuster
go get github.com/OJ/gobuster
go build github.com/OJ/gobuster
cd ../
echo "GoBuster installed!"

echo "Installing HostileSubBruteforcer..."
sudo git clone https://github.com/nahamsec/HostileSubBruteforcer
sudo chmod +x HostileSubBruteforcer/sub_brute.rb
echo "HostileSubBruteForcer installed!"

echo "Installing JoomScan..."
sudo git clone https://github.com/rezasp/joomscan
echo "JoomScan installed!"

echo "Installing JSParser..."
sudo git clone https://github.com/nahamsec/JSParser
sudo chmod +x JSParser/*.py
cd JSParser
sudo python setup.py install
cd ../
echo "JSParser installed!"

echo "Installing JS-Scan..."
sudo git clone https://github.com/zseano/JS-Scan
echo "JS-Scan installed!"

echo "Installing Lazyrecon..."
sudo git clone https://github.com/JR0ch17/lazyrecon
echo "Lazyrecon installed!"

echo "Installing LinkFinder..."
sudo git clone https://github.com/GerbenJavado/LinkFinder
cd LinkFinder/
sudo chmod +x setup.py
sudo python setup.py install
cd ../
echo "LinkFinder installed!"

echo "Installing Nikto..."
sudo apt-get install libnet-ssleay-perl libwhisker2-perl openssl -y
sudo wget https://cirt.net/nikto/nikto-2.1.5.tar.gz
sudo tar xvfz nikto-2.1.5.tar.gz
sudo rm nikto-2.1.5.tar.gz
sudo chmod +x nikto-2.1.5/*.pl
sudo perl nikto-2.1.5/nikto.pl -update
echo "Nikto installed!"

echo "Installing Nmap 7.60..."
sudo apt-get install alien
sudo wget https://nmap.org/dist/nmap-7.60-1.x86_64.rpm
sudo alien nmap-7.60-1.x86_64.rpm
sudo dpkg --install nmap_7.60-2_amd64.deb
sudo rm nmap*
echo "Nmap installed!"

echo "Installing Parameth..."
sudo git clone https://github.com/maK-/parameth
sudo pip install -r parameth/requirements.txt
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

echo "Installing Subbrute..."
sudo git clone https://github.com/TheRook/subbrute
echo "SubBrute installed!"

echo "Installing Subfinder..."
sudo git clone https://github.com/Ice3man543/subfinder
cd subfinder
go get github.com/Ice3man543/subfinder
go build github.com/Ice3man543/subfinder
cd ../
echo "Subfinder installed!"

echo "Installing Sublist3r"
sudo git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r/
sudo pip install -r requirements.txt
cd ../
echo "Sublist3r installed!"

echo "Installing Subover..."
sudo git clone https://github.com/Ice3man543/SubOver
cd SubOver
go build subover.go
cd ../
echo "SubOver installed!"

echo "Installing Tomcat-CVE-2017-12617..."
sudo git clone https://github.com/cyberheartmi9/CVE-2017-12617
sudo chmod +x CVE-2017-12617/tomcat-cve-2017-12617.py
echo "Tomcat-CVE-2017-12617 installed!"

echo "Installing Tplmap..."
sudo git clone https://github.com/epinna/tplmap
echo "Tplmap installed!"

echo "Installing TruffleHog..."
sudo pip install trufflehog
echo "TruffleHog installed!"

echo "Installing VBScan..."
sudo git clone https://github.com/rezasp/vbscan
sudo chmod +x vbscan/*.pl
echo "VBScan installed!"

echo "Installing Virtual-Host-Discovery..."
sudo git clone https://github.com/jobertabma/virtual-host-discovery
sudo chmod +x virtual-host-discovery/scan.rb
echo "Virtual-Host-Discovery installed!"

echo "Installing WPScan"
sudo git clone https://github.com/wpscanteam/wpscan
cd wpscan/
sudo gem install bundler && sudo bundle install --without test
cd ../
echo "WPScan installed!"

echo "Installing XSStrike..."
sudo git clone git clone https://github.com/UltimateHackers/XSStrike
cd XSStrike/
sudo pip install -r requirements.txt
cd ../
echo "XSStrike installed!"

echo "Installing Ysoserial..."
sudo git clone https://github.com/frohoff/ysoserial
cd ysoserial/
sudo wget https://jitpack.io/com/github/frohoff/ysoserial/master-SNAPSHOT/ysoserial-master-SNAPSHOT.jar
sudo mvn clean package -DskipTests
cd ../
echo "Ysoserial installed! Please check to ensure Java is installed to run the tool."

echo "Installing Aquatone..."
sudo gem install aquatone
echo "Don't forget to add your API keys!"
echo "Aquatone installed!"

echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in /opt"
ls -la
