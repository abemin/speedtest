# ookla speedtest to influxdb and grafana

##script tested on Ubuntu Server 20.04


**#install speedtest from ookla**

> sudo curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash

> sudo apt install speedtest

**#install influxdb & grafana**

> sudo apt install python3-pip

> wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -

> wget -qO- https://packages.grafana.com/gpg.key | sudo apt-key add -

> echo "deb https://repos.influxdata.com/debian buster stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

> echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

> sudo apt update

> sudo apt install influxdb

> sudo systemctl unmask influxdb

> sudo systemctl enable influxdb

> sudo systemctl start influxdb

> sudo apt install grafana

> sudo systemctl enable grafana-server

> sudo systemctl start grafana-server

**#influx database create**

> influx 

> CREATE DATABASE db_name

> CREATE USER "user_name" WITH PASSWORD 'password_here'

> GRANT ALL ON "sb_name" to "user_name"

> quit

**#influxdb library**

> sudo apt install python3-influxdb

**#speedtest script**

> speedtest_to_influx.py

**#cron script**

> ookla.sh

**###put below in crontab**

> 0 * * * *       /usr/bin/bash /home/administrator/ookla.sh

**#grafana**

> add data source influxdb

> URL http://localhost:8086

> Database: db_name

> User: user_name

> Password: password_here

> HTTP_Method: GET

**#import json dashboard
**

###dashboard_1
![This is an image](https://github.com/abemin/speedtest/blob/main/dashboard_1.png)

###dashboard_2
![This is an image](https://github.com/abemin/speedtest/blob/main/dashboard_2.png)
