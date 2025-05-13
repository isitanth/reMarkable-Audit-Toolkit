#!/bin/sh
echo "[+] Persistence Mechanisms:"
echo "[+] systemd services:"
ls /etc/systemd/system/
echo "[+] crontab:"
crontab -l 2>/dev/null
echo "[+] rc.local:"
cat /etc/rc.local 2>/dev/null
