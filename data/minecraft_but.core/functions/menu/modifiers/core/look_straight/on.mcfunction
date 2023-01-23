#> minecraft_but.core:menu/modifiers/core/look_straight/on
#Automatically generated toggle on function for look_straight
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set look_straight minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/look_straight/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges