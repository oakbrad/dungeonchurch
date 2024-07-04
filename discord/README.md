# Discord Bots

Dungeon Church currently has two self hosted bots: *The Deacon* which is [Node-Red](https://nodered.org/), and *The Bard* which is [Red](https://github.com/Cog-Creators/Red-DiscordBot). We also use [Sesh](https://sesh.fyi) for scheduling and managing RSVP roles.

## Node-Red
* [node-red-contrib-discord-advanced](https://github.com/Markoudstaal/node-red-contrib-discord-advanced)
* [node-red-contrib-discord-alternative](https://github.com/eslym/node-red-discord-alternative/)

## Red
### Cogs
* [audio](https://docs.discord.red/en/stable/cog_guides/audio.html)
* [gameroles](https://github.com/Flame442/FlameCogs)
* [rolenotify](https://cogs.yamikaitou.dev/rolenotify.html)
* [streams](https://docs.discord.red/en/stable/cog_guides/streams.html)

`audio` is for playing radio/music/session ambiance in Discord voice chat. `gameroles` can detect specific Discord activities. `streams` announces Twitch streaming.

It's not possible to detect role changes with the Node-Red nodes, so I use `rolenotify` to detect role changes & then send a message to a `#bot-relay` channel on Discord. Those messages trigger my automations in Node-Red. This is incredibly dumb but it works.