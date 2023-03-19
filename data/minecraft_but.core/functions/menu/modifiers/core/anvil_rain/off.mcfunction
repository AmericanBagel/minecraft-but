#> minecraft_but.core:menu/modifiers/core/anvil_rain/off
#Automatically generated toggle off function for anvil_rain
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set anvil_rain minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/anvil_rain/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/chaos