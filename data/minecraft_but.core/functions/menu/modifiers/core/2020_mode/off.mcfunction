#> minecraft_but.core:menu/modifiers/core/2020_mode/off
#Automatically generated toggle off function for 2020_mode
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set 2020_mode minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/2020_mode/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc