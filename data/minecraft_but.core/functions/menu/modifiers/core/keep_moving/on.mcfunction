#> minecraft_but.core:menu/modifiers/core/keep_moving/on
#Automatically generated toggle on function for keep_moving
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set keep_moving minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/keep_moving/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges