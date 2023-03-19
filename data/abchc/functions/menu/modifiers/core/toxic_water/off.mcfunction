#> abchc:menu/modifiers/core/toxic_water/off
#Automatically generated toggle off function for toxic_water
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set toxic_water abch.toggle 0

# Run unload function
function abchc:modifiers/toxic_water/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/challenges