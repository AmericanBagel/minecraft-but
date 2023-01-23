#> minecraft_but.core:menu/modifiers/core/botanophobia/on
#Automatically generated toggle on function for botanophobia
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set botanophobia minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/botanophobia/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges