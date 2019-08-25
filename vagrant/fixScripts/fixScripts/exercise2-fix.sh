#! /bin/bash

sudo su
nano /etc/hosts
sed -i '/www/d' hosts
