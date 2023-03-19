#> abchc:menu/modifiers/core/chunk_error/off
#Automatically generated toggle off function for chunk_error
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set chunk_error abch.toggle 0

# Run unload function
function abchc:modifiers/chunk_error/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/undefined