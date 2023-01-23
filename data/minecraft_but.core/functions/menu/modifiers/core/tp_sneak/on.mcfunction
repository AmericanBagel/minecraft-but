#> minecraft_but.core:menu/modifiers/core/tp_sneak/on
#Automatically generated toggle on function for tp_sneak
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tp_sneak minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/tp_sneak/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page