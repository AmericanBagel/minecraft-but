#> abchc:menu/modifiers/core/mobs_to_to_you/off
#Automatically generated toggle off function for mobs_to_to_you
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set mobs_to_to_you abch.toggle 0

# Run unload function
function abchc:modifiers/mobs_to_to_you/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory