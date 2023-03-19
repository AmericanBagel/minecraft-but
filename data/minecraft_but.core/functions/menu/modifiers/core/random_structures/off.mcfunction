#> minecraft_but.core:menu/modifiers/core/random_structures/off
#Automatically generated toggle off function for random_structures
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_structures minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/random_structures/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/chaos