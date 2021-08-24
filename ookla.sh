#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

pkill -f speedtest
/usr/bin/python3 /home/administrator/speedtest_to_influx.py
