#!/bin/bash
# Clone dungeonchurch-pyora repo and copy files to production 5etools site
# jafner/5etools-docker doesn't manage UID/GID so have to correct permissions here

echo "===== Starting Dungeon Church Homebrew Update ====="
echo "$(date): Beginning update process"

# Create temporary directory for cloning
TEMP_DIR=$(mktemp -d)
echo "Created temporary directory: $TEMP_DIR"
cd "$TEMP_DIR"
echo "Changed to temporary directory"

# Clone the repository with sparse checkout to exclude static folder
echo "Initializing sparse checkout of dungeonchurch-pyora repository..."
git init
git remote add origin https://github.com/oakbrad/dungeonchurch-pyora.git
git config core.sparseCheckout true

# Configure sparse-checkout to exclude static folder
echo "Configuring sparse-checkout to exclude static folder..."
echo "/*" > .git/info/sparse-checkout
echo "!static/" >> .git/info/sparse-checkout
cat .git/info/sparse-checkout
echo "Performing sparse checkout..."
git pull --depth=1 origin main

if [ $? -ne 0 ]; then
    echo "ERROR: Failed to clone repository!"
    exit 1
else
    echo "Successfully performed sparse checkout"
fi

echo "Current directory contents:"
ls -la

# Copy all JSON files to homebrew directory
echo "Creating homebrew directories if they don't exist..."
mkdir -p /home/ubuntu/5etools-homebrew
mkdir -p /home/ubuntu/5etools/homebrew
echo "Copying JSON files to homebrew directories..."
cp *.json /home/ubuntu/5etools-homebrew/
echo "  - Copied $(ls *.json | wc -l) JSON files to /home/ubuntu/5etools-homebrew/"
cp *.json /home/ubuntu/5etools/homebrew/
echo "  - Copied $(ls *.json | wc -l) JSON files to /home/ubuntu/5etools/homebrew/"

# Copy thirdparty directory contents
echo "Copying thirdparty directory contents..."
if [ -d "thirdparty" ]; then
    mkdir -p /home/ubuntu/5etools/homebrew/thirdparty
    cp -r thirdparty/* /home/ubuntu/5etools/homebrew/thirdparty/
    echo "  - Copied $(find thirdparty -type f | wc -l) files from thirdparty directory"
else
    echo "WARNING: thirdparty directory not found!"
fi

# Fix permissions
echo "Setting file permissions..."
find /home/ubuntu/5etools/homebrew -type f -exec chown opc:opc {} \;
find /home/ubuntu/5etools/homebrew -type f -exec chmod 775 {} \;
echo "  - Updated permissions for $(find /home/ubuntu/5etools/homebrew -type f | wc -l) files"

# Clean up
echo "Cleaning up temporary files..."
cd /
rm -rf "$TEMP_DIR"
echo "  - Removed temporary directory: $TEMP_DIR"
echo "Done loading newest brew."

# This changes the alert message on the main page
echo "Updating homepage alert message..."
cd /home/ubuntu/5etools
original='this is a mirror, and is not guaranteed to be up-to-date. Use at your own risk. If you can, please use the main site at <a class="alert-link" href="https://5e.tools/" target="_blank">5e.tools</a>.'
replacement="this is the <a class=alert-link href=https://www.dungeon.church>Dungeon Church</a> mirror that serves our homebrew <a class=alert-link href=https://github.com/oakbrad/dungeonchurch-pyora>Pyora setting</a> & the 2014 rules."
sed -i "s|$original|$replacement|g" index.html
if [ $? -ne 0 ]; then
    echo "WARNING: Failed to update alert message!"
else
    echo "  - Successfully updated alert message"
fi

nuke="<div class=\"mb-2\" id=\"wrp-patreon\"></div>"
sed -i "s|$nuke| |g" index.html
if [ $? -ne 0 ]; then
    echo "WARNING: Failed to remove patreon div!"
else
    echo "  - Successfully removed patreon div"
fi

echo "Done updating homepage"
echo "===== Dungeon Church Homebrew Update Completed at $(date) ====="

