#!/bin/bash

clear
read -p "enter remote folder name: " folderA
read -p "enter destanion folder name: " folderB
read -p "enter currect server: " server
echo $folderA
scp -r $folderA root@$server:$folderB
ssh -t root@$server<< EOF
pwd
sleep 10
ls -l
pwd
cd $folderB
echo $folderA
sleep 5
cd $folderA
ls -l
du -bc *
var=$( du -bc * | tail -n1 | cut -f1)
echo $var
EOF
