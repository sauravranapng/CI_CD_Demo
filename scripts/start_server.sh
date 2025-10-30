#!/bin/bash
set -e
echo "StartServer: ensure httpd is running"
systemctl enable httpd || true
systemctl start httpd
