#> abchc:menu/modifiers/core/fast_creepers/off
#Automatically generated toggle off function for fast_creepers
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set fast_creepers abch.toggle 0

# Run unload function
function abchc:modifiers/fast_creepers/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory