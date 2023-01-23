#> minecraft_but.core:menu/modifiers/core/flying_skeletons/on
#Automatically generated toggle on function for flying_skeletons
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set flying_skeletons minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/flying_skeletons/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs