#> minecraft_but.core:menu/modifiers/core/tnt_rain/on
#Automatically generated toggle on function for tnt_rain
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tnt_rain minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/tnt_rain/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/explosions