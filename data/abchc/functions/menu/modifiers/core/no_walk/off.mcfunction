#> abchc:menu/modifiers/core/no_walk/off
#Automatically generated toggle off function for no_walk
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_walk abch.toggle 0

# Run unload function
function abchc:modifiers/no_walk/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page