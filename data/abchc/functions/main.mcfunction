#> abchc:main
# Main tick file for data pack. Run every tick after abchc:load if the dependencies are installed correctly and run in the right order according to Lantern Load.
# @within abchc:load
# @context server
# @output
#   score abchc load.status
#       Lantern Load score to show the pack has been installed. Useful for potential expansion packs.

# Increase global timer for modifiers
# scoreboard players add global abch.timer 1 

# Menu
function abchc:menu/directory

# Modifiers
function abchc:modifiers/directory

# Lantern Load compatibility. See https://github.com/LanternMC/load#avoiding-the-minecrafttick-tag
scoreboard players set abchc load.status 1
schedule function abchc:main 1t