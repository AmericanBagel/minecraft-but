#> minecraft_but.coreraft_but.core:menu/modifiers/core/blindness/off
#Automatically generated toggle off function for blindness
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blindness minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/blindness/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects