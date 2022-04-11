#> abchc:menu/modifiers/core/botanophobia/off
#Automatically generated toggle off function for botanophobia
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set botanophobia abch.toggle 0

# Run unload function
function abchc:modifiers/botanophobia/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page