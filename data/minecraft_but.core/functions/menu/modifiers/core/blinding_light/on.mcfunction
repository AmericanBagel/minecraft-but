#> minecraft_but.core:menu/modifiers/core/blinding_light/on
#Automatically generated toggle on function for blinding_light
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set blinding_light minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/blinding_light/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page