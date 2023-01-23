#> minecraft_but.core:menu/modifiers/core/random_teleport/off
#Automatically generated toggle off function for random_teleport
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_teleport minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/random_teleport/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/teleporting