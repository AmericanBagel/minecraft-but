#> minecraft_but.coreraft_but.core:menu/modifiers/core/creeper_mobs/on
#Automatically generated toggle on function for creeper_mobs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set creeper_mobs minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/creeper_mobs/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions