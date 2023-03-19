#> minecraft_but.core:menu/modifiers/core/pacifists/off
#Automatically generated toggle off function for pacifists
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pacifists minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/pacifists/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page