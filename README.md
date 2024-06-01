# Dungeon Church
D&D group infrastructure. More information in [this blog post](https://www.dungeon.church/dungeon-church-software-stack).

Dungeon Church's ***Pyora*** setting as <a href="/5etools-homebrew">homebrew source</a> for 5E Tools.

Interested in playing with us? <b><a href=https://dungeon.church/join-us>Join us</a></b>.

## Software
- [Ghost](https://ghost.org/) - public website, email newsletters and automated reminders
- [Outline](https://www.getoutline.com/) - lore wiki for our homebrew setting
    - [Drawio](https://github.com/jgraph/docker-drawio) - diagramming integration
- [5E Tools](https://github.com/Jafner/5etools-docker) - Community compilation of D&D content and tools
- [Homebrewery](https://github.com/naturalcrit/homebrewery) - Convert Markdown (from Outline or 5ETools) to nice pages for print
- Discord - private group chat *(<a href=https://github.com/oakbrad/dungeonchurch/issues/6>not self hosted</a>)*
    - [Sesh.FYI](https://sesh.fyi/) - RSVP and calendar bot *(<a href=https://github.com/oakbrad/dungeonchurch/issues/7>not self hosted</a>)*
    - [Red Bot](https://github.com/Cog-Creators/Red-DiscordBot) - the self hosted, extensible Discord bot to rule them all
- [Node-Red](https://nodered.org/) - low code API magic to connect our services, syndicate to social, sync Discord roles to Ghost, etc.
- [FoundryVTT](https://foundryvtt.com/) - VTT platform we used over lockdown
    - [Plutonium](https://5e.tools/plutonium.html) - Import content from 5E Tools to FoundryVTT
    - [DDB Proxy](https://github.com/MrPrimate/ddb-proxy) - If you are stuck in WotC subscription land, you can import your content with this

*We are not playing online anymore, the FoundryVTT v10 config details are [archived here](/foundryvtt)*

## Docker Compose
The config necessary to run all this is detailed in the <a href=/docker-compose.yaml>docker-compose.yaml</a>

## Node-Red Examples
<a href=/node-red-examples/README.md>Example flows</a>