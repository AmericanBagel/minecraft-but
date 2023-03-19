#> minecraft_but.core:menu/modifiers/core/look_straight/off
#Automatically generated toggle off function for look_straight
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set look_straight minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/look_straight/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges