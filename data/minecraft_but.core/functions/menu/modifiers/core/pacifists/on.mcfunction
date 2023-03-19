#> minecraft_but.core:menu/modifiers/core/pacifists/on
#Automatically generated toggle on function for pacifists
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pacifists minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/pacifists/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page