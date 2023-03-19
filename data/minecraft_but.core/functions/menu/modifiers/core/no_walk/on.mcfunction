#> minecraft_but.core:menu/modifiers/core/no_walk/on
#Automatically generated toggle on function for no_walk
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_walk minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/no_walk/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page