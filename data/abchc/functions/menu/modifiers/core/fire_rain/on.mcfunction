#> abchc:menu/modifiers/core/fire_rain/on
#Automatically generated toggle on function for fire_rain
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set fire_rain abch.toggle 1

# Run load function
function abchc:modifiers/fire_rain/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page