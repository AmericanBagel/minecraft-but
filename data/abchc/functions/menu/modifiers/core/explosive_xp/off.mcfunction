#> abchc:menu/modifiers/core/explosive_xp/off
#Automatically generated toggle off function for explosive_xp
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_xp abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_xp/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory