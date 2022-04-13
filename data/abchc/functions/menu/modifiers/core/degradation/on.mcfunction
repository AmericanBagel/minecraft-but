#> abchc:menu/modifiers/core/degradation/on
#Automatically generated toggle on function for degradation
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set degradation abch.toggle 1

# Run load function
function abchc:modifiers/degradation/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page