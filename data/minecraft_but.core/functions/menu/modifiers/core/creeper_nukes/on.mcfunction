#> minecraft_but.core:menu/modifiers/core/creeper_nukes/on
#Automatically generated toggle on function for creeper_nukes
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set creeper_nukes minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/creeper_nukes/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/explosions