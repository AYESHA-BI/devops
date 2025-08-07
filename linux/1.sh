#!/bin/bash

echo "Server Name: $(hostname)"

echo "---------------------"
echo "Memory Info:"
free -h

echo "---------------------"
echo "CPU Info:" 
mpstat
echo "----------------------"
echo "Disk Usage:"
df -h /

echo "-----------------------"
echo "Top 5 Processes by CPU:"
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 6
~                                                 
