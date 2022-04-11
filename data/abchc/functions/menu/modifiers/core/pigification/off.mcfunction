#> abchc:menu/modifiers/core/pigification/off
#Automatically generated toggle off function for pigification
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set pigification abch.toggle 0

# Run unload function
function abchc:modifiers/pigification/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page