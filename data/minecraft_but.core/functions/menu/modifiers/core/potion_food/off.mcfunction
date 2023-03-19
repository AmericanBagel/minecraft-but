#> minecraft_but.coreraft_but.core:menu/modifiers/core/potion_food/off
#Automatically generated toggle off function for potion_food
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set potion_food minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/potion_food/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects