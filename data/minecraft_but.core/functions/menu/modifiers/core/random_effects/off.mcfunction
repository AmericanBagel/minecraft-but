#> minecraft_but.core:menu/modifiers/core/random_effects/off
#Automatically generated toggle off function for random_effects
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_effects minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/random_effects/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/effects