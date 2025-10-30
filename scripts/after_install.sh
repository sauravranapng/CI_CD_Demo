#!/bin/bash
set -e
echo "AfterInstall: unpacking artifact"
cd /tmp/artifact || exit 1
unzip -o /tmp/artifact.zip -d /tmp/artifact
# copy index.html to webserver directory
cp -r /tmp/artifact/build/* /var/www/html/
