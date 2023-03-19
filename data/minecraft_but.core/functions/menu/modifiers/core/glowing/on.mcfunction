#> minecraft_but.core:menu/modifiers/core/glowing/on
#Automatically generated toggle on function for glowing
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set glowing minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/glowing/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/effects