#> minecraft_but.coreraft_but.core:menu/modifiers/core/volatile_creepers/on
#Automatically generated toggle on function for volatile_creepers
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set volatile_creepers minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/volatile_creepers/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/undefined