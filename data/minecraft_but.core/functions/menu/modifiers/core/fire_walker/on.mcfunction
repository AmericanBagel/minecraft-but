#> minecraft_but.coreraft_but.core:menu/modifiers/core/fire_walker/on
#Automatically generated toggle on function for fire_walker
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fire_walker minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/fire_walker/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos