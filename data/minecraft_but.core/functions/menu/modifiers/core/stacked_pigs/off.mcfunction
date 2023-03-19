#> minecraft_but.coreraft_but.core:menu/modifiers/core/stacked_pigs/off
#Automatically generated toggle off function for stacked_pigs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set stacked_pigs minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/stacked_pigs/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs