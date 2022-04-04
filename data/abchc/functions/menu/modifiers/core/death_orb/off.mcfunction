#> abchc:menu/modifiers/core/death_orb/off
#Automatically generated toggle off function for death_orb
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set death_orb abch.toggle 0

# Run unload function
function abchc:modifiers/death_orb/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory