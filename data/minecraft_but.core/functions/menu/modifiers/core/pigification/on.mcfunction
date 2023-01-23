#> minecraft_but.core:menu/modifiers/core/pigification/on
#Automatically generated toggle on function for pigification
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pigification minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/pigification/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs