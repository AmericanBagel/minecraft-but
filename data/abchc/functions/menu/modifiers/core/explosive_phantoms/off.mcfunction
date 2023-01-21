#> abchc:menu/modifiers/core/explosive_phantoms/off
#Automatically generated toggle off function for explosive_phantoms
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_phantoms abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_phantoms/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mobs