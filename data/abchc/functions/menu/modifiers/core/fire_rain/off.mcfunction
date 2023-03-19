#> abchc:menu/modifiers/core/fire_rain/off
#Automatically generated toggle off function for fire_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set fire_rain abch.toggle 0

# Run unload function
function abchc:modifiers/fire_rain/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/chaos