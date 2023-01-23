#> minecraft_but.core:menu/modifiers/core/schlatt_mode/on
#Automatically generated toggle on function for schlatt_mode
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set schlatt_mode minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/schlatt_mode/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mechanic