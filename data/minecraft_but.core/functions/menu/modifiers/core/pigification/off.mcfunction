#> minecraft_but.core:menu/modifiers/core/pigification/off
#Automatically generated toggle off function for pigification
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pigification minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/pigification/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs