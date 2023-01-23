#> minecraft_but.core:menu/modifiers/core/waning_wellness/on
#Automatically generated toggle on function for waning_wellness
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set waning_wellness minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/waning_wellness/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/undefined