#> abchc:menu/modifiers/core/tnt_rain/off
#Automatically generated toggle off function for tnt_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tnt_rain abch.toggle 0

# Run unload function
function abchc:modifiers/tnt_rain/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory