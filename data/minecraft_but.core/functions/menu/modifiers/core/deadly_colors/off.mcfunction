#> minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/off
#Automatically generated toggle off function for deadly_colors
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set deadly_colors minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/deadly_colors/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc