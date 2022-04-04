#> abchc:menu/modifiers/core/overworld_ghasts/off
#Automatically generated toggle off function for overworld_ghasts
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set overworld_ghasts abch.toggle 0

# Run unload function
function abchc:modifiers/overworld_ghasts/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory