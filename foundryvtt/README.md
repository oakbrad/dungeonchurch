# FoundryVTT
<p align="center">
    <img src=https://img.shields.io/badge/dynamic/json?url=https://table.dungeon.church/api/status&query=$.version&logo=foundryvirtualtabletop&logoColor=ffffff&labelColor=ff2600&color=gray&label=foundryvtt>
    <img src=https://img.shields.io/badge/dynamic/json?url=https://table.dungeon.church/api/status&query=$.systemVersion&logo=dungeonsanddragons&logoColor=ffffff&labelColor=ff2600&color=gray&label=dnd5e>
    <img src=https://img.shields.io/badge/5etools-2014-gray?logo=roll20&logoColor=ffffff&labelColor=ff2600> 
    <img src=https://img.shields.io/badge/plutonium-v1.84.3-gray?&labelColor=ff2600> 
</p>
Notes on setting up Dungeon Church's virtual tabletop.

## Server Settings

* Core
  * Combat Tab→Skip Defeated? `Checked`
  * Audio/Video→Audio Video Conferencing Mode `Disabled`
  * Pan to Token Speaker `Unchecked`
  * Left Click to Release Objects `Checked`
  * Disable Experience Tracking `Checked`
  * User Permission Configuration
    * Configure Token Settings `Check for Player`
    * Create Journal Entries `Check for Player`
    * Create New Items `Check for Player`
    * Create New Actors `Check for Player`
    * Create New Tokens `Check for Player`
    * Delete Tokens `Check for Player`
    * Display Mouse Cursors `Uncheck All`
    * Upload New Files `Check for Player`
    * Use File Browser `Check for Player`
    * Use Drawing Tools `Check for Player`
* DnD5E
  * Encumbrance Tracking `Normal`
  * Collapse Item Cards in Chat `Checked`
  * Allow Polmorphing `Checked`

## Module Settings
* Auto Rotate
  * `Automatic`
* Carousel Combat Tracker
  * Carousel Style `Carousel - Left`
  * Overflow Style `Hidden`
  * Alignemnt `Left`
  * Attribute Visibility `Bars Only`
  * Portrait Aspect Ratio `Square`
  * Hide Defeated `Checked`
  * Show Disposition `Unchecked`
  * Show Initiative on Portrait `Unchecked`
  * Display Name `Based on Token`
* Chat Media
* colorsettings - *dependency of Splatter*
* Combat Booster
  * Enable Next Turn Marker `Unchecked`
  * Enable Start Turn Marker `Unchecked`
  * Mark Defeated `Checked`
  * Your Turn Notification `Checked`
  * Auto-Select Token on Turn Start `Checked`
  * Ignore Player Tokens `Checked`
* Carousel Combat Tracker
  * Carousel Style `Carousel - Left`
  * Overflow Style `Hidden`
  * Alignemnt `Left`
  * Attribute Visibility `Bars Only`
  * Portrait Aspect Ratio `Square`
  * Hide Defeated `Checked`
  * Show Disposition `Unchecked`
  * Show Initiative on Portrait `Unchecked`
  * Display Name `Based on Token`
* Custom CSS
  * _CodeMirror - *dependency*
* [DFred's Droppables](https://github.com/DFreds/dfreds-droppables)
  * Style: `Horizontal Line`
* Dice So Nice
  * Show Ghost dice for hidden rolls `Checked`
* Dice Tray
* Forien's Copy Environment
  * Backup untracked in repo because it contains secrets
* Foundry Community Macros
* Foundry to Discord
  * Enable Server Status Message `Checked`
  * Monitor user login/logout `Unchecked`
  * Enable 'Send to Discord' for everyone `Checked`
  * Force show names on Discord `Checked`
  * Auto-embed UUID Link Messages `Checked`
* 💵 JB2A Animation Assets - *depends on the following...*
  * Automated Animations
  * [dnd5e-animations](https://github.com/MrVauxs/dnd5e-animations)
  * Sequencer
* Initiative Double Click
* libWrapper - *dependency*
* 💵 MAD Cartographer - *depends on the following....*
  * Token Attacher
  * Library: Scene Packer
  * Levels
  * Wall Height
  * Better Roofs
* [Magic Items 2](https://github.com/PwQt/magic-items-2)
* NPC Generator (GPT)
* Plutonium
  * [Settings](/foundryvtt/plutonium-config.json) in repo
* Quick Insert
  * GMs Only `Checked`
* Splatter
  * Violence Level `6`
  * Cleanup `2`
* [Subfolder Indent](https://github.com/Mushie1/subfolder-indent)
* [Update Your Password](https://github.com/RichardRobertson/update-your-password)
* Vision 5E

### Evaluating
Modules in consideration.
* [Sync Token Name](https://github.com/lipefl/sync-token-name)
* [Monk's Little Details](https://github.com/ironmonk88/monks-little-details)
  * Edit Effects -> Add `Intoxicated` and remove extras
  * Swap target and settings button `Uncheck`
  * Directory padding - does this remove need for Subfolder Indent plugin?
  * Move the Pause Button Up `Everyone`
  * Pause Border Color `#ff2600`
* OBS Utils - haven't tried

## Custom CSS
```
/* Custom CSS */
#logo {content:url('https://raw.githubusercontent.com/oakbrad/dungeonchurch/main/foundryvtt/foundry-logo.png');} 
```
