#!/bin/sh
echo "[+] Firmware Integrity Check:"
echo "[+] Kernel modules (if available):"
lsmod 2>/dev/null || echo "lsmod not found"
echo "[+] SHA256 of /boot (if accessible):"
sha256sum /boot/* 2>/dev/null || echo "/boot not accessible or not present"
