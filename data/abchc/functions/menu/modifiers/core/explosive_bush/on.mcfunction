#> abchc:menu/modifiers/core/explosive_bush/on
#Automatically generated toggle on function for explosive_bush
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_bush abch.toggle 1

# Run load function
function abchc:modifiers/explosive_bush/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page