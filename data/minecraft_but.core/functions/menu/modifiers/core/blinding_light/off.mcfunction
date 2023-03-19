#> minecraft_but.core:menu/modifiers/core/blinding_light/off
#Automatically generated toggle off function for blinding_light
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blinding_light minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/blinding_light/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page