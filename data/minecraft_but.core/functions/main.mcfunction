#> minecraft_but.coreraft_but.core:main
# Main tick file for data pack. Run every tick after minecraft_but.coreraft_but.core:load if the dependencies are installed correctly and run in the right order according to Lantern Load.
# @within minecraft_but.coreraft_but.core:load
# @context server
# @output
#   score minecraft_but.coreraft_but.core load.status
#       Lantern Load score to show the pack has been installed. Useful for potential expansion packs.

# Increase global timer for modifiers
# scoreboard players add global minecraft_but.timer 1 

# Menu
function minecraft_but.coreraft_but.core:menu/directory

# Modifiers
function minecraft_but.coreraft_but.core:modifiers/directory

# Lantern Load compatibility. See https://github.com/LanternMC/load#avoiding-the-minecrafttick-tag
scoreboard players set minecraft_but.coreraft_but.core load.status 1
schedule function minecraft_but.coreraft_but.core:main 1t