# Dungeon Church
D&D group infrastructure. More information in [this blog post](https://www.dungeon.church/dungeon-church-software-stack).

## Software
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
The config necessary to run all this is detailed in the <a href=/docker-compose.yaml>docker-compose.yaml</a>
### Container List
- [jc21/nginx-proxy-manager](https://github.com/NginxProxyManager/nginx-proxy-manager)
- [nodered/node-red](https://nodered.org/docs/getting-started/docker)
- [felddy/foundryvtt](https://github.com/felddy/foundryvtt-docker)
- [ghcr.io/mrprimate/ddb-proxy](https://github.com/MrPrimate/ddb-proxy)
- [jafner/5etools-docker](https://github.com/Jafner/5etools-docker)
- postgres
- redis
- [outlinewiki/outline](https://github.com/outline/outline)
- [ghost](https://github.com/TryGhost/Ghost)
- mysql
- [phasecorex/red-discordbot](https://github.com/PhasecoreX/docker-red-discordbot)

## Node-Red Examples
The json files to import these into Node-Red are in the repo here.

### Ghost Authorization
Get an auth cookie to access the API

<img src=/node-red-examples/ghost-auth-cookie.png>

### Ghost Post to Discord
Repost public blog posts from Ghost to Discord and tag @everyone

<img src=/node-red-examples/ghost-to-discord.png>

### Outline to Discord Command
Discord ```/lore``` command prints the first result from Outline search, including backlinks and ChatGPT flavor.

<img src=/node-red-examples/discord-slash-lore.png>
Result:
<img src=/node-red-examples/discord-slash-lore-output.png>

### Discord Roles to Ghost Newsletters
Synchronize RSVP roles from Discord to corresponding email newsletters in Ghost.

*This one is a bit of a mess, need to refactor before posting.*

