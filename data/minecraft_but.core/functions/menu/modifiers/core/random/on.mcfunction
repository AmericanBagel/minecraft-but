#> minecraft_but.coreraft_but.core:menu/modifiers/core/random/on
#Automatically generated toggle on function for random
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/random/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/undefined