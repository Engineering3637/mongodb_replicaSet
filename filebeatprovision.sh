<<<<<<< HEAD
#!/bin/#!/usr/bin/env bash

mkdir -p /etc/pki/tls/certs
=======
#!/usr/bin/env bash

>>>>>>> 032cd01de8159151b73ba1c5346ac18c162fd644
Kitchen login – inside the ubuntu box
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add –
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
<<<<<<< HEAD
sudo apt-get update && sudo apt-get install filebeat
=======
sudo apt-get update && sudo apt-get install filebeat --allow-unauthenticated -y
sudo mv /home/ubuntu/logstash-forwarder.crt /etc/pki/tls/certs/logstash-forwarder.crt
sudo mv /home/ubuntu/filebeat.yml /etc/filebeat/filebeat.yml
>>>>>>> 032cd01de8159151b73ba1c5346ac18c162fd644
sudo update-rc.d filebeat defaults 95 10
sudo service filebeat start
sudo service filebeat status
