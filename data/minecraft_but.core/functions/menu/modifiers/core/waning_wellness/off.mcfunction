#> minecraft_but.core:menu/modifiers/core/waning_wellness/off
#Automatically generated toggle off function for waning_wellness
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set waning_wellness minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/waning_wellness/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/undefined