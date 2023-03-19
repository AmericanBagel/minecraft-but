#> minecraft_but.core:menu/modifiers/core/degradation/off
#Automatically generated toggle off function for degradation
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set degradation minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/degradation/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/chaos