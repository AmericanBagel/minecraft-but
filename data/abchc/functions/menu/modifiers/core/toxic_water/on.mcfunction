#> abchc:menu/modifiers/core/toxic_water/on
#Automatically generated toggle on function for toxic_water
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set toxic_water abch.toggle 1

# Run load function
function abchc:modifiers/toxic_water/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page