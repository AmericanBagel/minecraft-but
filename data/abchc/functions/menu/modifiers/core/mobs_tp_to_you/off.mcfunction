#> abchc:menu/modifiers/core/mobs_tp_to_you/off
#Automatically generated toggle off function for mobs_tp_to_you
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set mobs_tp_to_you abch.toggle 0

# Run unload function
function abchc:modifiers/mobs_tp_to_you/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page