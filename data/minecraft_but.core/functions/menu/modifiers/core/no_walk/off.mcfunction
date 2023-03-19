#> minecraft_but.coreraft_but.core:menu/modifiers/core/no_walk/off
#Automatically generated toggle off function for no_walk
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_walk minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/no_walk/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page