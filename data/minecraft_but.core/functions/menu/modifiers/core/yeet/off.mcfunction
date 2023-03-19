#> minecraft_but.coreraft_but.core:menu/modifiers/core/yeet/off
#Automatically generated toggle off function for yeet
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set yeet minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/yeet/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs