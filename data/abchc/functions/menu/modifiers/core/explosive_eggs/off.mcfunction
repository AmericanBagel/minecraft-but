#> abchc:menu/modifiers/core/explosive_eggs/off
#Automatically generated toggle off function for explosive_eggs
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_eggs abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_eggs/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory