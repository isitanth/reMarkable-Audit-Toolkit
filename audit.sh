# ============================================
# reMarkable Audit Toolkit
# Author: Anthony Chambet – github : AnthDev
# Purpose: Perform modular security and system audits on reMarkable tablets
# Target: Embedded Linux (Yocto-based) systems with authorized SSH access @10.11.99.1
# 
# This toolkit is designed to be:
# - Non-invasive (runs from mounted storage)
# - Modular (easy to extend with new audit modules)
# - Portable (tar.gz archive for USB or SSH deployment)
#
# Configuration (via config.cfg):
# - AUDIT_LEVEL=light|deep      # Controls verbosity or module set
# - OUTPUT_DIR=path             # Where logs are saved
# 
# Usage:
#   1. Extract toolkit on USB or remote mount
#   2. Run: ./audit.sh
#   3. Logs are saved in the output directory with timestamps
#   4. Enjoy :)
# ============================================

#!/bin/sh

[ -f config.cfg ] && . config.cfg
OUTPUT_DIR="${OUTPUT_DIR:-./output}"
mkdir -p "$OUTPUT_DIR"
LOGFILE="$OUTPUT_DIR/audit_$(date +%F_%H-%M).log"

echo "[+] Starting reMarkable Security Audit" > "$LOGFILE"
echo "Date: $(date)" >> "$LOGFILE"

for module in ./modules/*.sh; do
    echo "\n--- Running $(basename "$module") ---" >> "$LOGFILE"
    sh "$module" >> "$LOGFILE" 2>&1
done

echo "\n[✓] Audit complete. Output saved to $LOGFILE"
