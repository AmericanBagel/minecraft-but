#> abchc:menu/modifiers/core/creeper_reinforcements/off
#Automatically generated toggle off function for creeper_reinforcements
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_reinforcements abch.toggle 0

# Run unload function
function abchc:modifiers/creeper_reinforcements/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page