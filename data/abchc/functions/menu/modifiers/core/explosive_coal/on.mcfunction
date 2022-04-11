#> abchc:menu/modifiers/core/explosive_coal/on
#Automatically generated toggle on function for explosive_coal
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_coal abch.toggle 1

# Run load function
function abchc:modifiers/explosive_coal/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page