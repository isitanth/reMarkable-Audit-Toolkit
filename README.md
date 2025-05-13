# reMarkable Audit Toolkit

**Author:** Anthony Chambet – Solution Architect  
**Target:** reMarkable Paper Tablets (Linux-based)  
**Purpose:** Modular and non-invasive security audit tool for embedded Linux systems.

## Structure

```
remarkable-audit-toolkit/
├── audit.sh              # Main orchestrator script
├── config.cfg            # Optional configuration file
├── modules/              # Modular audit checks
├── tools/                # Space for optional binaries (e.g., busybox)
└── output/               # Auto-created folder for log output
```

## Usage

1. Copy the toolkit to a USB drive or remote filesystem.
2. Mount the storage on your reMarkable device.
3. SSH into the device and run:
   ```bash
   ./audit.sh
   ```
4. Logs will be saved in the `output/` directory with timestamped filenames.

## Configuration (`config.cfg`)

You can adjust runtime behavior by editing `config.cfg`:

```ini
AUDIT_LEVEL=deep        # Options: light, deep
OUTPUT_DIR=./output     # Change log output path
```

## Audit Capabilities

- Kernel and system info
- Mount status and remount attempts
- Privilege escalation vectors (SUID, world-writable paths)
- Persistence mechanisms (systemd, rc.local, crontabs)
- Network services and open ports
- Firmware hash checks (if accessible)

## Philosophy

This toolkit is made to be **transparent**, **modular**, and **non-destructive**. Perfect for embedded systems, field diagnostics, or initial compromise assessment.

---

> Automate beautifully. Audit responsibly.

