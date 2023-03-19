#> minecraft_but.coreraft_but.core:menu/modifiers/core/superhot/off
#Automatically generated toggle off function for superhot
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set superhot minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/superhot/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc