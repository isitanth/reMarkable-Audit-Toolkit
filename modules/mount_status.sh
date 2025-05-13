#!/bin/sh
echo "[+] Mount Status:"
mount
echo "[+] Attempting to remount root as RW..."
mount -o remount,rw / && echo "Remount RW succeeded" || echo "Remount RW failed"
