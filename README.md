<p align="center">
    <img width="650" src="logo-chrome.png">
</p>

# Dungeon Church
Dungeons & Dragons group infrastructure & homebrew. More information in <a href=https://www.dungeon.church/dungeon-church-software-stack>this blog post</a>.

Dungeon Church's ***Pyora*** setting as <a href="/5etools-homebrew">homebrew source</a> for 5E Tools.

Interested in playing with us? <b><a href=https://dungeon.church/join-us>Join us</a></b>.

# Software
- [Ghost](https://ghost.org/) - public website, email newsletters and automated reminders
- [Outline](https://www.getoutline.com/) - lore wiki for our homebrew setting
    - [Drawio](https://github.com/jgraph/docker-drawio) - diagramming integration
- [5E Tools](https://github.com/Jafner/5etools-docker) - Community compilation of D&D content and tools
- [Homebrewery](https://github.com/naturalcrit/homebrewery) - Convert Markdown (from Outline or 5ETools) to nice pages for print
- [Discord](/discord) - group chat
    - [Sesh.FYI](https://sesh.fyi/) - RSVP and event bot *(<a href=https://github.com/oakbrad/dungeonchurch/issues/7>not self hosted</a>)*
    - [Red Bot](https://github.com/Cog-Creators/Red-DiscordBot) - self hosted, extensible Discord bot
- [Node-Red](https://nodered.org/) - low code API magic to connect our services, syndicate to social, sync Discord roles to Ghost, etc.
- [FoundryVTT](https://foundryvtt.com/) - Virtual table platform
    - [Plutonium](https://5e.tools/plutonium.html) - Import content from 5E Tools to FoundryVTT
    - [DDB Proxy](https://github.com/MrPrimate/ddb-proxy) - Imports from official D&D Beyond platform

## Docker Compose
The config necessary to run all this is detailed in the <a href=/docker-compose.yaml>docker-compose.yaml</a>

## FoundryVTT
Details of our [FoundryVTT v12 setup](/foundryvtt).

## Node-Red Examples
<a href=/node-red-examples/README.md>Example flows</a>