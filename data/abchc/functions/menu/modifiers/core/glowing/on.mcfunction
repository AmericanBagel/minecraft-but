#> abchc:menu/modifiers/core/glowing/on
#Automatically generated toggle on function for glowing
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set glowing abch.toggle 1

# Run load function
function abchc:modifiers/glowing/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page