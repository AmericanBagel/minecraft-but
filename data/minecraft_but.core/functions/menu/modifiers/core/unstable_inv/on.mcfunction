#> minecraft_but.coreraft_but.core:menu/modifiers/core/unstable_inv/on
#Automatically generated toggle on function for unstable_inv
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set unstable_inv minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/unstable_inv/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenge