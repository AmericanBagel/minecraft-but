#> minecraft_but.coreraft_but.core:menu/modifiers/core/overworld_ghasts/off
#Automatically generated toggle off function for overworld_ghasts
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set overworld_ghasts minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/overworld_ghasts/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs