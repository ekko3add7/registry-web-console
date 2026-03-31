# registry-web-console

This is a container registry and UI deployment solution designed speifically for RHEL systems, using **Podman Quadlet** technology to achieve native Systemd management.

## Quick Start
```bash
./deploy.sh
```

## Mgmt CLI
```bash
systemctl start registry-stack-pod
systemctl stop registry-stack-pod
journalctl -u registry-ui.service -f
```
