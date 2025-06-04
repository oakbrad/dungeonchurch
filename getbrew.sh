#!/bin/bash
# Clone dungeonchurch-pyora repo and copy files to production 5etools site
# jafner/5etools-docker doesn't manage UID/GID so have to correct permissions here

# Create temporary directory for cloning
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

# Clone the repository
git clone https://github.com/oakbrad/dungeonchurch-pyora.git
cd dungeonchurch-pyora

# Copy all JSON files to homebrew directory
mkdir -p /home/ubuntu/5etools-homebrew
cp *.json /home/ubuntu/5etools-homebrew/
cp *.json /home/ubuntu/5etools/homebrew/

# Copy static and thirdparty directories
mkdir -p /home/ubuntu/5etools/homebrew/static
mkdir -p /home/ubuntu/5etools/homebrew/thirdparty

# Copy static directory contents
cp -r static/* /home/ubuntu/5etools/homebrew/static/

# Copy thirdparty directory contents
cp -r thirdparty/* /home/ubuntu/5etools/homebrew/thirdparty/

# Fix permissions
find /home/ubuntu/5etools/homebrew -type f -exec chown opc:opc {} \;
find /home/ubuntu/5etools/homebrew -type f -exec chmod 775 {} \;

# Clean up
cd /
rm -rf "$TEMP_DIR"
echo "Done loading newest brew."

# This changes the alert message on the main page
cd /home/ubuntu/5etools
original='this is a mirror, and is not guaranteed to be up-to-date. Use at your own risk. If you can, please use the main site at <a class="alert-link" href="https://5e.tools/" target="_blank">5e.tools</a>.'
replacement="this is the <a class=alert-link href=https://www.dungeon.church>Dungeon Church</a> mirror that serves our homebrew <a class=alert-link href=https://github.com/oakbrad/dungeonchurch-pyora>Pyora setting</a> & the 2014 rules."
sed -i "s|$original|$replacement|g" index.html
nuke="<div class=\"mb-2\" id=\"wrp-patreon\"></div>"
sed -i "s|$nuke| |g" index.html
echo "Done updating homepage"

