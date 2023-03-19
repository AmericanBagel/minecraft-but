#> abchc:menu/modifiers/core/tp_sneak/off
#Automatically generated toggle off function for tp_sneak
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tp_sneak abch.toggle 0

# Run unload function
function abchc:modifiers/tp_sneak/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page