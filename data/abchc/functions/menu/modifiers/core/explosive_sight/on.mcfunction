#> abchc:menu/modifiers/core/explosive_sight/on
#Automatically generated toggle on function for explosive_sight
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_sight abch.toggle 1

# Run load function
function abchc:modifiers/explosive_sight/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page