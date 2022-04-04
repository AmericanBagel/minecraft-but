#> abchc:menu/modifiers/core/keep_moving/off
#Automatically generated toggle off function for keep_moving
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set keep_moving abch.toggle 0

# Run unload function
function abchc:modifiers/keep_moving/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory