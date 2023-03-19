#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/on
#Automatically generated toggle on function for death_orb
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set death_orb minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/death_orb/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos