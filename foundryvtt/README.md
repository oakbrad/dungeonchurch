# FoundryVTT
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
    * Create New Tokens `Check for Player`
    * Delete Tokens `Check for Player`
    * Display Mouse Cursors `Uncheck All`
    * Upload New Files `Check for Player`
    * Use File Browser `Check for Player`
    * Use Drawing Tools `Check for Player
* DnD5E
  * Encumbrance Tracking `Normal`
  * Collapse Item Cards in Chat `Checked`

## Module Settings
* DDB Importer
  * Set CORS Cookie
  * DDB Proxy `Checked`
    * URL: `https://ddb-proxy.dungeon.church`
* Dice So Nice
  * Show Ghost dice for hidden rolls `Checked`
* Dice Tray
* Foundry to Discord
  * Enable Server Status Message `Checked`
  * Monitor user login/logout `Unchecked`
  * Enable 'Send to Discord' for everyone `Checked`
* libWrapper - dependency
* Magic Items - dependency of DDB Importer
* NPC Generator (GPT)
* OBS Utils
* Plutonium
  * [Settings](/foundryvtt/plutonium-config.json) in repo
* Quick Insert
  * GMs Only `Checked`
* Vision 5E - dependency of DDB Importer