#> minecraft_but.coreraft_but.core:menu/modifiers/core/mobs_tp_to_you/off
#Automatically generated toggle off function for mobs_tp_to_you
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set mobs_tp_to_you minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/mobs_tp_to_you/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/teleporting