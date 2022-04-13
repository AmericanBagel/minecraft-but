#> abchc:menu/modifiers/core/degradation/off
#Automatically generated toggle off function for degradation
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set degradation abch.toggle 0

# Run unload function
function abchc:modifiers/degradation/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page