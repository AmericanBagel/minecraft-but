#> minecraft_but.coreraft_but.core:menu/modifiers/core/overworld_ghasts/on
#Automatically generated toggle on function for overworld_ghasts
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set overworld_ghasts minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/overworld_ghasts/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs