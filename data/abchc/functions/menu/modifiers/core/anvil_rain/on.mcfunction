#> abchc:menu/modifiers/core/anvil_rain/on
#Automatically generated toggle on function for anvil_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set anvil_rain abch.toggle 1

# Run load function
function abchc:modifiers/anvil_rain/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory