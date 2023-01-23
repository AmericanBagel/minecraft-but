#> minecraft_but.core:menu/modifiers/core/random_teleport/on
#Automatically generated toggle on function for random_teleport
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_teleport minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/random_teleport/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/teleporting