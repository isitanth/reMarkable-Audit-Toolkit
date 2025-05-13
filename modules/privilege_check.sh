#!/bin/sh
echo "[+] Privilege Escalation Vectors:"
echo "[+] SUID Binaries:"
find / -perm -4000 -type f 2>/dev/null
echo "[+] World-writable Directories:"
find / -type d -perm -0002 2>/dev/null
