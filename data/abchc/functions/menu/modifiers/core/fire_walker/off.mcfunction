#> abchc:menu/modifiers/core/fire_walker/off
#Automatically generated toggle off function for fire_walker
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set fire_walker abch.toggle 0

# Run unload function
function abchc:modifiers/fire_walker/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory