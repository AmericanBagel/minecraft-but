#> abchc:menu/modifiers/core/no_gravity/on
#Automatically generated toggle on function for no_gravity
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_gravity abch.toggle 1

# Run load function
function abchc:modifiers/no_gravity/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/challenges