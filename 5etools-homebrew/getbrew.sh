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
original="this is a mirror, and is not guaranteed to be up-to-date. Use at your own risk. If you can, please use the main site at"
replacement="this is the <a class=alert-link href=https://www.dungeon.church>Dungeon Church</a> mirror that serves our <a class=alert-link href=https://github.com/oakbrad/dungeonchurch>Pyora setting</a>. The main site is at"
sed -i "s|$original|$replacement|g" index.html
echo "Done updating homepage"