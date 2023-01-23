#> minecraft_but.core:menu/modifiers/core/superhot/on
#Automatically generated toggle on function for superhot
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set superhot minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/superhot/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc