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