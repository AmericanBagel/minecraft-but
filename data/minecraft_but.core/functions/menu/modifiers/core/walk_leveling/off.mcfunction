#> minecraft_but.coreraft_but.core:menu/modifiers/core/walk_leveling/off
#Automatically generated toggle off function for walk_leveling
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set walk_leveling minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/walk_leveling/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects