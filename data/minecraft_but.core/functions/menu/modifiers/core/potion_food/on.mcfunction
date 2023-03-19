#> minecraft_but.coreraft_but.core:menu/modifiers/core/potion_food/on
#Automatically generated toggle on function for potion_food
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set potion_food minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/potion_food/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects