#> abchc:menu/modifiers/core/mobs_glow/off
#Automatically generated toggle off function for mobs_glow
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set mobs_glow abch.toggle 0

# Run unload function
function abchc:modifiers/mobs_glow/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory