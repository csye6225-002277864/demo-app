#!/bin/sh

sudo cp /tmp/node.service /etc/systemd/system/node.service

sudo systemctl daemon-reload

echo "start the webapp"
sudo systemctl enable node