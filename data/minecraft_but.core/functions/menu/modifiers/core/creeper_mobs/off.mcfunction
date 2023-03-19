#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/off
#Automatically generated toggle off function for creeper_mobs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set creeper_mobs minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/creeper_mobs/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions