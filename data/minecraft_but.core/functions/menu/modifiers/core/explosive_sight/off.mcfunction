#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_sight/off
#Automatically generated toggle off function for explosive_sight
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_sight minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/explosive_sight/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions