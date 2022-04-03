#> abchc:menu/modifiers/core/overworld_ghasts/on
#Automatically generated toggle on function for overworld_ghasts
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set overworld_ghasts abch.toggle 1

# Run load function
function abchc:modifiers/overworld_ghasts/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory