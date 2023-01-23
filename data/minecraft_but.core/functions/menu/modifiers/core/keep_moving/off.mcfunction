#> minecraft_but.core:menu/modifiers/core/keep_moving/off
#Automatically generated toggle off function for keep_moving
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set keep_moving minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/keep_moving/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges