#> abchc:menu/modifiers/core/blinding_light/off
#Automatically generated toggle off function for blinding_light
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blinding_light abch.toggle 0

# Run unload function
function abchc:modifiers/blinding_light/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page