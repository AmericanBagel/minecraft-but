# ![Minecraft, but MEGAPACK](./assets/title.png)

# ![🤔 Why?](./assets/why.png)
Browsing through [PlanetMinecraft's data pack page](https://www.planetminecraft.com/data-packs/), you will quickly notice the sheer amount of "Minecraft, but" data packs that flood it. You might think all these data packs sound fun. After playing with one, you might want to use several. What if you used 5, 10, 15, 20 different "Minecraft, but" data packs? You'll quickly find yourself annoyed with having to manually type out `/datapack disable "file/..."`. You will also find it annoying that very few of them are customizable! For the data packs that are customizable, you will often forget how you were supposed to customize them in the first place! Managing several of these data packs quickly turns into a nightmare.

The **Minecraft, but MEGAPACK aims** to solve this problem by providing one centralized menu to manage all your gameplay modifiers. Gone are the days of typing `/datapack`! Gone are the days of having to revisit that PlanetMinecraft page again and again to remind yourself how to configure it! Gone are the days of having to find that inconveniently placed `.txt` file hidden away in the archived data pack file! Gone are the days of a chat flooded by 50 different "Minecraft, but" data packs every time you reload.

# ![📋 Features](./assets/features.png)
## ![⚙️ Modifiers](./assets/modifiers.png)
The Megapack contains 70+ gameplay modifiers, which are essentially "Minecraft, but" scenarios ranging from "Minecraft, but TNT rains from the sky" to "Minecraft, but items randomly fall out of your inventory". 

### ![Configuration](./assets/configuration.png)
I aim to make every modifier as customizable as possible. For example, in the "TNT rains from the sky" modifier, you can customize the rate at which the TNT spawns, toggle whether the TNT griefs (automatically set to the mobGriefing gamerule value), and if the TNT spawns from the sky and/or a few blocks above players.

If you want to reset the configuration for a modifier back to the defaults, each configuration option has a reset button that looks like [⟲].

### ![Difficulty](./assets/difficulty.png)
Can't decide what to configure? Many modifiers respect global **Difficulty** and automatically change their configuration values to scale with the **Global Difficulty**, which automatically is set to the world difficulty with **Difficulty Sync**. However, you can input a custom global **Difficulty** which doesn't match the world difficulty. You can even configure the difficulty on a per-modifier basis, using each modifier's **Local Difficulty** -- which is set to the Global Difficulty by default.

### ![Blacklisting](./assets/blacklisting.png)
Want to disable a modifier or all modifiers for a certain player? In the config menu of each modifier, you will find an option to blacklist a certain player from that modifier. Alternatively, you can blacklist a player from all modifiers in the main config menu. **Players in the spectator gamemode are always blacklisted from almost all modifiers.**

### ![Modes](./assets/modes.png)
By default, **manual mode** is enabled. **Manual mode** allows you to manually enable or disable modifiers -- the way the pack was meant to be. However, if you're feeling indecisive, you can enable **Random Mode** which randomly selects modifiers after a certain interval (default 5 minutes). Feeling like a speedrunner? You can enable **Speedrun Mode** which enables modifiers over time, but doesn't disable them -- you'll start off with just one modifier which gradually increases. More time, more chaos. You can configure the mode in the Config menu page.

## ![🗿 Menu](./assets/menu.png)
### ![Opening the menu](./assets/opening-the-menu.png)

# 🏷️ Todo
- [x] 70+ customizable, toggleable gameplay modifiers
- [x] Centralized GUI to manage modifiers
- [x] An easy kill switch when you want the chaos to all *stop*
- [x] Configuration GUIs for 15+ modifiers to fine-tune your gameplay
- [x] Random mode which randomly enables or disables modifiers at a customizable interval
- [x] Four difficulties which automatically change the difficulty and extremity of certain modifiers
- [x] Script to generate config menu 
- [ ] Admin panel to exempt certain players from being affected by modifiers
- [ ] Admin panel to select which players have access to data pack GUI
- [ ] Incompatible modifier detection (i.e. trying to enable Nyctophobia while Heliophobia is enabled)
