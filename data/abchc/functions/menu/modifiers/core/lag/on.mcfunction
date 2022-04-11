#> abchc:menu/modifiers/core/lag/on
#Automatically generated toggle on function for lag
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lag abch.toggle 1

# Run load function
function abchc:modifiers/lag/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page