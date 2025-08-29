#!/usr/bin/env bash
set -e

# Run the webserver setup script
bash "$(dirname "$0")/webserver_install.sh"

# Make sure our site is served by restarting nginx
systemctl restart nginx
