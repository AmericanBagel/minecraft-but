#> abchc:menu/modifiers/core/explosive_snowballs/off
#Automatically generated toggle off function for explosive_snowballs
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_snowballs abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_snowballs/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page