#> minecraft_but.core:menu/modifiers/core/explosive_phantoms/on
#Automatically generated toggle on function for explosive_phantoms
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_phantoms minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/explosive_phantoms/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs