#> minecraft_but.coreraft_but.core:menu/modifiers/core/no_gravity/off
#Automatically generated toggle off function for no_gravity
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_gravity minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/no_gravity/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges