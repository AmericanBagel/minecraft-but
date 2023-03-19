#> minecraft_but.coreraft_but.core:menu/modifiers/core/walk_leveling/on
#Automatically generated toggle on function for walk_leveling
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set walk_leveling minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/walk_leveling/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects