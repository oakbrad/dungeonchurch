#!/bin/bash
# Pull homebrew file every hour via crontab
# jafner/5etools-docker doesn't manage UID/GID so have to correct permissions here

cd /home/ubuntu/5etools-homebrew
wget "https://raw.githubusercontent.com/oakbrad/dungeonchurch/main/5etools-homebrew/Dungeon Church; Pyora.json"
cp "/home/ubuntu/5etools-homebrew/Dungeon Church; Pyora.json" /home/ubuntu/5etools/homebrew
rm "/home/ubuntu/5etools-homebrew/Dungeon Church; Pyora.json"
chown opc:opc "/home/ubuntu/5etools/homebrew/Dungeon Church; Pyora.json"
chmod 775 "/home/ubuntu/5etools/homebrew/Dungeon Church; Pyora.json"
echo "Done loading newest brew."

# This changes the alert message on the main page
cd /home/ubuntu/5etools
original='this is a mirror, and is not guaranteed to be up-to-date. Use at your own risk. If you can, please use the main site at <a class="alert-link" href="https://5e.tools/" target="_blank">5e.tools</a>.'
replacement="this is the <a class=alert-link href=https://www.dungeon.church>Dungeon Church</a> mirror that serves our homebrew <a class=alert-link href=https://github.com/oakbrad/dungeonchurch>Pyora setting</a>, using the 2014 rules."
sed -i "s|$original|$replacement|g" index.html
nuke="<div class=\"mb-2\" id=\"wrp-patreon\"></div>"
sed -i "s|$nuke| |g" index.html
echo "Done updating homepage"