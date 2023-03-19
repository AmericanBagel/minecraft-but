#> minecraft_but.core:menu/modifiers/core/botanophobia/off
#Automatically generated toggle off function for botanophobia
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set botanophobia minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/botanophobia/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges