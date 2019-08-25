#! /bin/bash

sudo su
ssh-keygen -t rsa -b 4096
ls ~/.ssh/id_*
ssh-copy-id root@server2
vagrant
ssh root@server2
