#> minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_colors/on
#Automatically generated toggle on function for deadly_colors
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set deadly_colors minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/deadly_colors/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc