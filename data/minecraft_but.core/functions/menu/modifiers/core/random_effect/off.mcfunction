#> minecraft_but.core:menu/modifiers/core/random_effect/off
#Automatically generated toggle off function for random_effect
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_effect minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/random_effect/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page