# Node-Red Examples
Node-Red is a low code, visual programming tool. For this project, I use it as duck tape to connect Ghost, Discord, and Outline together via their APIs.

You can use the json files here to import these into Node-Red.

## Useful Nodes
* [node-red-contrib-turndown](https://flows.nodered.org/node/node-red-contrib-turndown) Convert HTML to Markdown
* [node-red-discord-advanced](https://github.com/Markoudstaal/node-red-contrib-discord-advanced) Interact with Discord
* [node-red-discord-alternative](https://flows.nodered.org/node/node-red-discord-alternative) A few more nodes for Discord
* [node-red-contrib-ical-events](https://flows.nodered.org/node/node-red-contrib-ical-events) Calendar events
* [node-red-contrib-chatgpt](https://github.com/HaroldPetersInskipp/node-red-contrib-chatgpt) Access OpenAI tools
* [node-red-contrib-batcher](https://flows.nodered.org/node/node-red-contrib-batcher) Debouncing & rate limiting.

### Ghost Authorization
Get an auth cookie to access the Ghost API, then save it in the Node-Red flow context.

<img src=/node-red-examples/ghost-auth-cookie.png>

### Ghost Post to Discord
Push Ghost posts to Discord. A webhook is configured in the Ghost settings to send posts to the HTTP receiver node in Node-Red, where it is reformatted as a Discord embed.

<img src=/node-red-examples/ghost-to-discord.png>
Output:
<img src=/node-red-examples/ghost-to-discord-output.png>

### Outline to Discord Command
Discord node listens for ```/lore``` command prints the first result from Outline search. Includes backlinks, an image attachment, and ChatGPT flavor.

<img src=/node-red-examples/discord-slash-lore.png>
Output::
<img src=/node-red-examples/discord-slash-lore-output.png>