#> abchc:menu/modifiers/core/explosive_phantoms/on
#Automatically generated toggle on function for explosive_phantoms
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_phantoms abch.toggle 1

# Run load function
function abchc:modifiers/explosive_phantoms/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory