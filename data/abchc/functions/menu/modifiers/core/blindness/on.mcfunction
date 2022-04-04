#> abchc:menu/modifiers/core/blindness/on
#Automatically generated toggle on function for blindness
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blindness abch.toggle 1

# Run load function
function abchc:modifiers/blindness/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory