#> minecraft_but.core:menu/modifiers/core/2020_mode/on
#Automatically generated toggle on function for 2020_mode
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set 2020_mode minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/2020_mode/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc