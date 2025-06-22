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
  * Combat Tracker
    * Skip Defeated? `Checked`
    * Combat Sounds `Epic`
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
  * Rules Version `2014`
  * Encumbrance Tracking `Normal`
  * Collapse Item Cards in Chat `Checked`
  * Allow Polmorphing `Checked`
  * Allow Summoning `Checked`

## Module Settings
* [Auto Rotate](https://github.com/Varriount/fvtt-autorotate)
  * `Automatic`
* Automated Animations
  * Launch Menu->Settings->JB2a Asset Location `S3`
* [Automated Evocations](https://theripper93.com/module/automated-evocations)
  * Store Companions on Actor `Checked`
  * Auto Close on Summon `Checked`
  *dependency* portal-lib
* [Carousel Combat Tracker](https://github.com/theripper93/combat-tracker-dock)
  * Carousel Style `Carousel - Left`
  * Overflow Style `Hidden`
  * Alignemnt `Left`
  * Attribute Visibility `Bars Only`
  * Portrait Aspect Ratio `Square`
  * Hide Defeated `Checked`
  * Show Disposition `Unchecked`
  * Show Initiative on Portrait `Unchecked`
  * Display Name `Based on Token`
  * Hide Until First Turn `Checked`
* [Chat Media](https://github.com/p4535992/foundryvtt-chat-media/)
* [Combat Booster](https://github.com/theripper93/Combat-Booster)
  * Enable Next Turn Marker `Unchecked`
  * Turn Marker Image `combatbooster-turnmarker-dc.png`
  * Turn Marker Scale `1.4`
  * Enable Start Turn Marker `Unchecked`
  * Mark Defeated `Checked`
  * Turn Marker Ignore Token Scale `Unchecked`
  * Your Turn Notification `Checked`
  * Auto-Select Token on Turn Start `Checked`
  * Ignore Player Tokens `Checked`
  * Auto Enable HUD (GM Only) `Checked`
* [Custom CSS](https://github.com/cswendrowski/FoundryVTT-Custom-CSS)
  * *dependency* [CodeMirror](https://github.com/League-of-Foundry-Developers/codemirror-lib)
* [DFred's Droppables](https://github.com/DFreds/dfreds-droppables)
  * Style: `Horizontal Line`
* [Dice So Nice](https://gitlab.com/riccisi/foundryvtt-dice-so-nice)
  * Show Ghost dice for hidden rolls `Checked`
* [Dice Tray](https://github.com/mclemente/fvtt-dice-tray)
* 💵 [Epic Rolls](https://theripper93.com/module)
  * Recap Message `Public`
* [Forien's Copy Environment](https://github.com/League-of-Foundry-Developers/foundryvtt-forien-copy-environment)
  * Backup untracked in repo because it contains secrets
* [Foundry Community Macros](https://github.com/foundry-vtt-community/macros)
* [Foundry to Discord](https://github.com/therealguy90/FoundryToDiscord)
  * Enable Server Status Message `Checked`
  * Monitor user login/logout `Unchecked`
  * Enable 'Send to Discord' for everyone `Checked`
  * Force show names on Discord `Checked`
  * Auto-embed UUID Link Messages `Checked`
* 💵 [JB2A Animation Assets](https://github.com/Jules-Bens-Aa/JB2A_DnD5e) - *depends on the following...*
  * Hide Animation Tab from Players `Checked`
  * Critical Hits `Checked`
  * Critical Misses `Checked`
  * JB2A Location - `S3`
  * *dependency* [Automated Animations](https://github.com/otigon/automated-jb2a-animations)
  * *dependency* [dnd5e-animations](https://github.com/MrVauxs/dnd5e-animations)
  * *dependency* [Sequencer](https://github.com/fantasycalendar/FoundryVTT-Sequencer)
* 💵 [Hover Distance](https://theripper93.com/module)
  * Highlight Only in Combat `Checked`
* [Initiative Double Click](https://github.com/mclemente/fvtt-initiative-double-click)
* *dependency* [libWrapper](https://github.com/ruipin/fvtt-lib-wrapper)
* 💵 [Levels - Depth Blur](https://theripper93.com/module)
* 💵 [MAD Cartographer Map Packs](https://themad.network/the-mad-cartographer)
  * *dependency* [Token Attacher](https://github.com/KayelGee/token-attacher)
  * *dependency* [Library: Scene Packer](https://github.com/League-of-Foundry-Developers/scene-packer)
  * *dependency* [Levels](https://github.com/theripper93/Levels)
  * *dependency* [Wall Height](https://foundryvtt.com/packages/wall-height)
  * *dependency* [Better Roofs](https://github.com/theripper93/Better-Roofs/)
* [Magic Items 2](https://github.com/PwQt/magic-items-2) - allows magic abilities to be attached to items
* 💵 [Media Optimizer](https://theripper93.com/module)
* [Monk's Little Details](https://github.com/ironmonk88/monks-little-details)
  * Edit Effects -> Add `Intoxicated` and remove extras
  * Swap target and settings button `Uncheck`
  * Directory padding - does this remove need for Subfolder Indent plugin?
  * Move the Pause Button Up `Everyone`
  * Pause Border Color `#ff2600`
* [NPC Generator (GPT)](https://foundryvtt.com/packages/npc-generator-gpt)
* [Plutonium](https://github.com/TheGiddyLimit/plutonium-next/releases/tag/v1.84.3)
  * [Settings](/foundryvtt/plutonium-config.json) in repo
* 💵 [PSFX Sound FX](www.patreon.com/c/perisfx/posts)
* [Quick Insert](https://gitlab.com/fvtt-modules-lab/quick-insert)
  * GMs Only `Checked`
* [SmartTarget](https://github.com/theripper93/Smart-Target)
  * Targeting Mode `Always Target (Player Only)`
  * Release Behavior `Sticky`
  * Template Targeting `Checked`
  * Show Indicator Portraits Instead of Colors `Checked`
  * Use Tokens instead of Avatars `Checked`
  * GM Image `Token Portrait`
  * Target Indicator Position `Center Bottom`
  * Target Indicator `Better Target`
  * Use Player Color for Indicator `Checked`
* [Splatter](https://github.com/theripper93/Splatter)
  * *dependency* [colorsettings](https://github.com/ardittristan/VTTColorSettings)
  * Violence Level `6`
  * Cleanup `2`
* [Sync Token Name](https://github.com/lipefl/sync-token-name)
* [Subfolder Indent](https://github.com/Mushie1/subfolder-indent)
* [Update Your Password](https://github.com/RichardRobertson/update-your-password)
* [Vision 5E](https://github.com/dev7355608/vision-5e)

### Evaluating
Installed modules for consideration. Not enabled.

* 💵 [Dynamic Soundscapes](https://theripper93.com/module)
* 💵 [Levels Cover Calculator](https://theripper93.com/module)
* 💵 [Paper Doll](https://theripper93.com/module)
* 💵 [PartyHUD](https://theripper93.com/module)
* 💵 [Puzzle Locks](https://theripper93.com/module)
* 💵 [Youtube Player Widget](https://theripper93.com/module)
* 💵 [Compact Scene Navigation](https://theripper93.com/module)
  * Doesn't really do what I want it to do (hide it always)
* 💵 [Filepicker+](https://theripper93.com/module)
* 💵 [Hexplorer](https://theripper93.com/module)
* 💵 [World Setting Sync](https://theripper93.com/module)
* 💵 [System Customizer](https://theripper93.com/module)
* [CharacterVault](https://github.com/sigil-johnstevens/character-vault) - sync actors to/from . haven't tried.
* [OBS Utils](https://github.com/FaeyUmbrea/obs-utils) - haven't tried

## Custom CSS
```
/* Custom CSS */
#logo {content:url('https://raw.githubusercontent.com/oakbrad/dungeonchurch/main/foundryvtt/foundry-logo.png');} 
```
