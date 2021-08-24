# speedtest
script to do ookla speedtest and save to influxdb and import to grafana

script tested on Ubuntu Server 20.04

#steps

#install speedtest from ookla

sudo curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash

sudo apt install speedtest

#install influxdb & grafana

sudo apt install python3-pip

wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -

wget -qO- https://packages.grafana.com/gpg.key | sudo apt-key add -

echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

sudo apt update

sudo apt install influxdb

sudo systemctl unmask influxdb

sudo systemctl enable influxdb

sudo systemctl start influxdb

sudo apt install grafana

sudo systemctl enable grafana-server

sudo systemctl start grafana-server

#influx database create

CREATE DATABASE db_name

CREATE USER "user_name" WITH PASSWORD 'password_here'

GRANT ALL ON "sb_name" to "user_name"

quit

#influxdb library
sudo apt install python3-influxdb

#speedtest script
speedtest_to_influx.py

#cron script
0 * * * *       /usr/bin/bash /home/administrator/ookla.sh

