#> abchc:menu/modifiers/core/random_teleport/off
#Automatically generated toggle off function for random_teleport
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random_teleport abch.toggle 0

# Run unload function
function abchc:modifiers/random_teleport/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page