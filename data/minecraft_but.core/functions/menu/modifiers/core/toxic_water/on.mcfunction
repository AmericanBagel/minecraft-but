#> minecraft_but.core:menu/modifiers/core/toxic_water/on
#Automatically generated toggle on function for toxic_water
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set toxic_water minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/toxic_water/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges