#> abchc:menu/modifiers/core/death_swap/off
#Automatically generated toggle off function for death_swap
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set death_swap abch.toggle 0

# Run unload function
function abchc:modifiers/death_swap/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page