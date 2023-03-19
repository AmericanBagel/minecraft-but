#> minecraft_but.coreraft_but.core:menu/modifiers/core/ender_blood/off
#Automatically generated toggle off function for ender_blood
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set ender_blood minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/ender_blood/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/teleporting