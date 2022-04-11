#> abchc:menu/modifiers/core/blinding_damage/off
#Automatically generated toggle off function for blinding_damage
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blinding_damage abch.toggle 0

# Run unload function
function abchc:modifiers/blinding_damage/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page