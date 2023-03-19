#> minecraft_but.coreraft_but.core:menu/modifiers/core/anvil_rain/on
#Automatically generated toggle on function for anvil_rain
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set anvil_rain minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/anvil_rain/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos