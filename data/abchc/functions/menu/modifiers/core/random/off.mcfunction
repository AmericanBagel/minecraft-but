#> abchc:menu/modifiers/core/random/off
#Automatically generated toggle off function for random
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random abch.toggle 0

# Run unload function
function abchc:modifiers/random/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page