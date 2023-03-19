#> minecraft_but.core:menu/modifiers/core/degradation/on
#Automatically generated toggle on function for degradation
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set degradation minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/degradation/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/chaos