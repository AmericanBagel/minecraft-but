#> minecraft_but.coreraft_but.core:menu/modifiers/core/fire_rain/off
#Automatically generated toggle off function for fire_rain
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fire_rain minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/fire_rain/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos