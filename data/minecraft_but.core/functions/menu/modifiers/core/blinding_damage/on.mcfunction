#> minecraft_but.coreraft_but.core:menu/modifiers/core/blinding_damage/on
#Automatically generated toggle on function for blinding_damage
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blinding_damage minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/blinding_damage/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges