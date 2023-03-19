#> minecraft_but.coreraft_but.core:menu/modifiers/core/piglinator/off
#Automatically generated toggle off function for piglinator
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set piglinator minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/piglinator/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs