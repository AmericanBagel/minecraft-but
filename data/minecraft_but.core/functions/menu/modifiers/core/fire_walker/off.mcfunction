#> minecraft_but.coreraft_but.core:menu/modifiers/core/fire_walker/off
#Automatically generated toggle off function for fire_walker
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fire_walker minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/fire_walker/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos