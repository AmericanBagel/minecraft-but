#> minecraft_but.core:menu/modifiers/core/deadly_falls/off
#Automatically generated toggle off function for deadly_falls
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set deadly_falls minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/deadly_falls/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges