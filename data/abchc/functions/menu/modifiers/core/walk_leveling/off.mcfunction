#> abchc:menu/modifiers/core/walk_leveling/off
#Automatically generated toggle off function for walk_leveling
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set walk_leveling abch.toggle 0

# Run unload function
function abchc:modifiers/walk_leveling/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/effects