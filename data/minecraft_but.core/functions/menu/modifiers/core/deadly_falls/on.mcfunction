#> minecraft_but.coreraft_but.core:menu/modifiers/core/deadly_falls/on
#Automatically generated toggle on function for deadly_falls
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set deadly_falls minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/deadly_falls/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges