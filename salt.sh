#!/bin/bash
figlet Welcome
sleep 1
clear
echo "Coded By Zuhair"
sleep 2
clear
echo "[+] Choose the following "
echo "1 scan host "
echo "2 bomb someone "
echo "3 your ip "
echo "4 web attack vector "
read ch
if [$ch -eq 1 ];then
bash ip.sh
exit
elif [$ch -eq 2 ];then
cd 
cd XLRBOMBER
exit
elif [$ch -eq 3 ];then
ifconfig
exit
elif [ch -eq 4 ];then
echo "Wll add features soon "
exit

