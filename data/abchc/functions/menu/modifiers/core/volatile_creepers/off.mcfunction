#> abchc:menu/modifiers/core/volatile_creepers/off
#Automatically generated toggle off function for volatile_creepers
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set volatile_creepers abch.toggle 0

# Run unload function
function abchc:modifiers/volatile_creepers/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page