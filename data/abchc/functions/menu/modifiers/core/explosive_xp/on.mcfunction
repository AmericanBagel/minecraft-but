#> abchc:menu/modifiers/core/explosive_xp/on
#Automatically generated toggle on function for explosive_xp
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_xp abch.toggle 1

# Run load function
function abchc:modifiers/explosive_xp/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory