#> minecraft_but.core:menu/modifiers/core/death_swap/on
#Automatically generated toggle on function for death_swap
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set death_swap minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/death_swap/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/teleporting