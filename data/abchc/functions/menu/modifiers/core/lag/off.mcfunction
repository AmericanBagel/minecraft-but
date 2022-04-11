#> abchc:menu/modifiers/core/lag/off
#Automatically generated toggle off function for lag
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lag abch.toggle 0

# Run unload function
function abchc:modifiers/lag/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page