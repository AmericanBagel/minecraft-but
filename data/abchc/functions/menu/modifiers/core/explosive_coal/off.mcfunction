#> abchc:menu/modifiers/core/explosive_coal/off
#Automatically generated toggle off function for explosive_coal
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_coal abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_coal/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page