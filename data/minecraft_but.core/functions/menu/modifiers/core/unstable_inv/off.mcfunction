#> minecraft_but.core:menu/modifiers/core/unstable_inv/off
#Automatically generated toggle off function for unstable_inv
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set unstable_inv minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/unstable_inv/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenge