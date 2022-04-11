#> abchc:menu/modifiers/core/reverse_gravity/off
#Automatically generated toggle off function for reverse_gravity
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set reverse_gravity abch.toggle 0

# Run unload function
function abchc:modifiers/reverse_gravity/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page