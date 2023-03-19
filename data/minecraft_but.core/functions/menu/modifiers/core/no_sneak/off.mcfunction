#> minecraft_but.coreraft_but.core:menu/modifiers/core/no_sneak/off
#Automatically generated toggle off function for no_sneak
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_sneak minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/no_sneak/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mechanic