#> abchc:menu/modifiers/core/no_jump/off
#Automatically generated toggle off function for no_jump
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_jump abch.toggle 0

# Run unload function
function abchc:modifiers/no_jump/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory