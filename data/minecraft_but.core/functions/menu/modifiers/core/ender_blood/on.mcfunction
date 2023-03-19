#> minecraft_but.core:menu/modifiers/core/ender_blood/on
#Automatically generated toggle on function for ender_blood
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set ender_blood minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/ender_blood/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/teleporting