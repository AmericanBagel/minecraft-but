#> abchc:menu/modifiers/core/midas_touch/off
#Automatically generated toggle off function for midas_touch
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set midas_touch abch.toggle 0

# Run unload function
function abchc:modifiers/midas_touch/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory