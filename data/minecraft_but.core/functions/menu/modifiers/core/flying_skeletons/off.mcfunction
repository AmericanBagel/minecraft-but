#> minecraft_but.core:menu/modifiers/core/flying_skeletons/off
#Automatically generated toggle off function for flying_skeletons
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set flying_skeletons minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/flying_skeletons/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs