#> minecraft_but.core:menu/modifiers/core/explosive_eggs/off
#Automatically generated toggle off function for explosive_eggs
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_eggs minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/explosive_eggs/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/explosions