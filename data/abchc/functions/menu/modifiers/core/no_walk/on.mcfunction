#> abchc:menu/modifiers/core/no_walk/on
#Automatically generated toggle on function for no_walk
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_walk abch.toggle 1

# Run load function
function abchc:modifiers/no_walk/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page