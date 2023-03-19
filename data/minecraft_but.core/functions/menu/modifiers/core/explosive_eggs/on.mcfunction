#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_eggs/on
#Automatically generated toggle on function for explosive_eggs
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_eggs minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/explosive_eggs/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions