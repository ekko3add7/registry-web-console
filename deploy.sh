#!/bin/bash

BASE_DIR="/opt/my-registry"
SYSTEMD_DIR="/etc/containers/systemd"

echo "Start to deploy Registry service..."

sudo mkdir -p $BASE_DIR/data
sudo mkdir -p $SYSTEMD_DIR

sudo cp systemd/*.pod $SYSTEMD_DIR/
sudo cp systemd/*.container $SYSTEMD_DIR/

sudo restorecon -Rv $BASE_DIR
sudo chown -R $USER:$USER $BASE_DIR

echo "Reload and restart systemd services..."
sudo systemctl daemon-reload
sleep 3
sudo systemctl enable --now registry-stack-pod.service

echo "Deployment completed successfully!"
echo "You can run 'systemctl status registry-stack-pod' to check the status."
