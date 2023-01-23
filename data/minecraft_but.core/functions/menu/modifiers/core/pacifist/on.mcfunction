#> minecraft_but.core:menu/modifiers/core/pacifist/on
#Automatically generated toggle on function for pacifist
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pacifist minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/pacifist/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mechanic