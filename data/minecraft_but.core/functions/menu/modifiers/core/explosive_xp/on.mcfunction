#> minecraft_but.core:menu/modifiers/core/explosive_xp/on
#Automatically generated toggle on function for explosive_xp
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_xp minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/explosive_xp/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page