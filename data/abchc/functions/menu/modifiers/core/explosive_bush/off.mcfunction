#> abchc:menu/modifiers/core/explosive_bush/off
#Automatically generated toggle off function for explosive_bush
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_bush abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_bush/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory