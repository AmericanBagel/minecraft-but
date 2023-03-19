#> minecraft_but.coreraft_but.core:menu/modifiers/core/stacked_pigs/on
#Automatically generated toggle on function for stacked_pigs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set stacked_pigs minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/stacked_pigs/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs