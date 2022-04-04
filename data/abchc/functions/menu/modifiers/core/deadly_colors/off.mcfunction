#> abchc:menu/modifiers/core/deadly_colors/off
#Automatically generated toggle off function for deadly_colors
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set deadly_colors abch.toggle 0

# Run unload function
function abchc:modifiers/deadly_colors/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory