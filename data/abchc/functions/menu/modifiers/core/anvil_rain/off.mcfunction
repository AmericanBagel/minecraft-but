#> abchc:menu/modifiers/core/anvil_rain/off
#Automatically generated toggle off function for anvil_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set anvil_rain abch.toggle 0

# Run unload function
function abchc:modifiers/anvil_rain/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page