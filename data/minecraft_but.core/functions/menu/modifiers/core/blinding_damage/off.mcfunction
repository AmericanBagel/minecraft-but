#> minecraft_but.core:menu/modifiers/core/blinding_damage/off
#Automatically generated toggle off function for blinding_damage
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blinding_damage minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/blinding_damage/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges