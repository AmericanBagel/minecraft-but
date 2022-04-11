#> abchc:menu/modifiers/core/explosive_sight/off
#Automatically generated toggle off function for explosive_sight
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_sight abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_sight/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page