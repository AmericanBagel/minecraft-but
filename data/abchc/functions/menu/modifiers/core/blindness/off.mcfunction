#> abchc:menu/modifiers/core/blindness/off
#Automatically generated toggle off function for blindness
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blindness abch.toggle 0

# Run unload function
function abchc:modifiers/blindness/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory