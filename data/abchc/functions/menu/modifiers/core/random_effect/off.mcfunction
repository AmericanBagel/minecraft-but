#> abchc:menu/modifiers/core/random_effect/off
#Automatically generated toggle off function for random_effect
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random_effect abch.toggle 0

# Run unload function
function abchc:modifiers/random_effect/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page