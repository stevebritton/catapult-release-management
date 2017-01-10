sudo yum install -y java-1.8.0-openjdk-devel.x86_64 
java -version

if [ ! -d /usr/local/src/bamboo/atlassian-bamboo-5.13.2/atlassian-bamboo ]; then

    mkdir --parents /usr/local/src/bamboo
    cd /usr/local/src/bamboo
    
    curl --silent --show-error --connect-timeout 5 --output bamboo.tar.gz --retry 5 --location --url https://www.atlassian.com/software/bamboo/downloads/binary/atlassian-bamboo-5.13.2.tar.gz

    tar -xzf bamboo.tar.gz

fi

mkdir --parents /usr/local/src/bamboo/atlassian-bamboo
sudo cat > "/usr/local/src/bamboo/atlassian-bamboo-5.13.2/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties" << EOF
    bamboo.home=/usr/local/src/bamboo/atlassian-bamboo
EOF

# run bamboo as port 80
sed --in-place 's/:8085//g' /usr/local/src/bamboo/atlassian-bamboo/xml-data/configuration/administration.xml
sed --in-place 's/port="8085"/port="80"/g' /usr/local/src/bamboo/atlassian-bamboo-5.13.2/conf/server.xml

# start bamboo
bash /usr/local/src/bamboo/atlassian-bamboo-5.13.2/bin/start-bamboo.sh

# sleep a few seconds to allow start-bamboo.sh to run
sleep 5
# confirm that bamboo has started, the first start can expect a 5-10 minute delay 
response=0
until [ $response -eq 200 ]; do
    response=$(curl --connect-timeout 30 --max-time 30 --head --output /dev/null --retry 0 --silent --write-out '%{http_code}\n' --location --url http://127.0.0.1)
    echo "$(date) waiting for Bamboo to start, checking every 30 seconds (a fresh install takes about 10 minutes startup time)..."
done
echo "Bamboo successfully started"

# echo out configuration, which includes the IP address of the bamboo instance
cat /usr/local/src/bamboo/atlassian-bamboo/bamboo.cfg.xml
