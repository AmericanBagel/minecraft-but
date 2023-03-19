#> abchc:menu/modifiers/core/waning_wellness/off
#Automatically generated toggle off function for waning_wellness
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set waning_wellness abch.toggle 0

# Run unload function
function abchc:modifiers/waning_wellness/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/undefined