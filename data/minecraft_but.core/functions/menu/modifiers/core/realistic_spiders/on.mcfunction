#> minecraft_but.core:menu/modifiers/core/realistic_spiders/on
#Automatically generated toggle on function for realistic_spiders
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set realistic_spiders minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/realistic_spiders/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs