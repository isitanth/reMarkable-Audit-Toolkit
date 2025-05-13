#!/bin/sh
echo "[+] Network Services and Listening Ports:"
netstat -tuln
echo "[+] Active Connections:"
netstat -an
echo "[+] SSH Daemon status:"
ps aux | grep -i '[s]shd'
