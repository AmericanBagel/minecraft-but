#> abchc:menu/modifiers/core/tnt_rain/on
#Automatically generated toggle on function for tnt_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tnt_rain abch.toggle 1

# Run load function
function abchc:modifiers/tnt_rain/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory