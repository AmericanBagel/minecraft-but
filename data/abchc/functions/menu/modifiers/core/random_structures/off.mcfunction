#> abchc:menu/modifiers/core/random_structures/off
#Automatically generated toggle off function for random_structures
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random_structures abch.toggle 0

# Run unload function
function abchc:modifiers/random_structures/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page