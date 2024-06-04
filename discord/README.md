# Discord Bots

Dungeon Church currently has two bots: *The Deacon* which is Node-Red, and *The Penitent* which is [Red](https://github.com/Cog-Creators/Red-DiscordBot).

## Node-Red
* [node-red-contrib-discord-advanced](https://github.com/Markoudstaal/node-red-contrib-discord-advanced)
* [node-red-contrib-discord-alternative](https://github.com/eslym/node-red-discord-alternative/)

I have not figured out a way to generate events in Node-Red for role changes with these nodes.

## Red
* [rolenotify](https://cogs.yamikaitou.dev/rolenotify.html)

I use this to detect role changes, then send a message to a `#bot-relay` channel on Discord that *The Deacon* is watching. Those messages trigger my automations in Node-Red.

## Old Config

During pandemic, I set up some [Defender + Warden](https://github.com/Twentysix26/26-Cogs) automations for the server which are archived here.