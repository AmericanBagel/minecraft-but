#> abchc:menu/modifiers/core/midas_touch/on
#Automatically generated toggle on function for midas_touch
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set midas_touch abch.toggle 1

# Run load function
function abchc:modifiers/midas_touch/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory