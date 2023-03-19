#> abchc:menu/modifiers/core/walk_leveling/on
#Automatically generated toggle on function for walk_leveling
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set walk_leveling abch.toggle 1

# Run load function
function abchc:modifiers/walk_leveling/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/effects