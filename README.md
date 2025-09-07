# reMarkable audit toolkit

**Author:** Anthony Chambet
**Target:** reMarkable Paper Tablets (Linux-based custom distro)  
**Purpose:** Small entry level modular and non-invasive security audit tool for embedded Linux systems.

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

## Context

- I recently experimented with reMarkable devices, which expose root access over SSH — a bold and transparent design choice that provides direct insight into Linux-based systems. This capability serves as a practical entry point for exploring operating system internals, security primitives, and the interaction between kernel space and user space.
- It allows to concrete ideas on how such devices could be improved — both in terms of everyday user experience and in supporting deeper internal testing/debugging.

> Automate beautifully. Audit responsibly.

