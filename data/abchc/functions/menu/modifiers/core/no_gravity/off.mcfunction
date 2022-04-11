#> abchc:menu/modifiers/core/no_gravity/off
#Automatically generated toggle off function for no_gravity
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_gravity abch.toggle 0

# Run unload function
function abchc:modifiers/no_gravity/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page