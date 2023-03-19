#> minecraft_but.core:menu/modifiers/core/blindness/on
#Automatically generated toggle on function for blindness
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blindness minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/blindness/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/effects