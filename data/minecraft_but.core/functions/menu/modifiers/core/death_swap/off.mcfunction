#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/off
#Automatically generated toggle off function for death_swap
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set death_swap minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/death_swap/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/teleporting