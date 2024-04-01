# Dungeon Church
D&D group infrastructure.

## Software
More information on [this blog post](https://www.dungeon.church/dungeon-church-software-stack)

- [Ghost](https://ghost.org/) - public website, email newsletters and automated reminders
- [Outline](https://www.getoutline.com/) - lore wiki for our homebrew setting
- [5E Tools](https://github.com/Jafner/5etools-docker) - Community compilation of D&D content and tools
- Discord - private group chat
    - [Sesh.FYI](https://sesh.fyi/) - RSVP and calendar bot *(not self hosted)*
    - [Red Bot](https://github.com/Cog-Creators/Red-DiscordBot) - the self hosted, extensible Discord bot to rule them all
- [Node-Red](https://nodered.org/) - low code API magic to connect our services, syndicate to social, sync Discord roles to Ghost, etc.
- [FoundryVTT](https://foundryvtt.com/) - VTT platform we used over lockdown
    - [Plutonium](https://5e.tools/plutonium.html) - Import content from 5E Tools to FoundryVTT
    - [DDB Proxy](https://github.com/MrPrimate/ddb-proxy) - If you are stuck in WotC subscription land, you can import your content with this

## Docker Compose
The containers necessary to run all this are detailed in the docker-compose.yaml

- jc21/nginx-proxy-manager
- nodered/node-red
- felddy/foundryvtt
- ghcr.io/mrprimate/ddb-proxy
- jafner/5etools/docker
- postgres
- redis
- outlinewiki/outline
- ghost
- mysql
- phasecorex/red-discordbot

## Node-Red Examples

### Ghost Authorization
Get an auth cookie to access the API

<img src=/node-red-examples/ghost-auth-cookie.png>

### Ghost Post to Discord
Repost public blog posts from Ghost to Discord and tag @everyone

<img src=/node-red-examples/ghost-to-discord.png>

### Outline to Discord Command
Discord ```/lore``` command prints the first result from Outline search, including backlinks and ChatGPT flavor.

<img src=/node-red-examples/discord-slash-lore.png>

### Discord Roles to Ghost Newsletters
Synchronize RSVP roles from Discord to corresponding email newsletters in Ghost.

*This one is a bit of a mess, need to refactor before posting.*

