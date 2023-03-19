#> minecraft_but.core:menu/modifiers/core/schlatt_mode/off
#Automatically generated toggle off function for schlatt_mode
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set schlatt_mode minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/schlatt_mode/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mechanic