#> minecraft_but.core:menu/modifiers/core/no_jump/off
#Automatically generated toggle off function for no_jump
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_jump minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/no_jump/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mechanic