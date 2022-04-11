#> abchc:menu/modifiers/core/2020_mode/off
#Automatically generated toggle off function for 2020_mode
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set 2020_mode abch.toggle 0

# Run unload function
function abchc:modifiers/2020_mode/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page