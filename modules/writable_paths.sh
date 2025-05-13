#!/bin/sh
echo "[+] Writable Binary Paths:"
find /usr/bin -type f -writable 2>/dev/null
echo "[+] Writable system directories:"
find / -type d -writable 2>/dev/null | grep -vE '^/proc|^/sys|^/dev'
