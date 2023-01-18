#> abchc:menu/modifiers/core/random_structures/on
#Automatically generated toggle on function for random_structures
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random_structures abch.toggle 1

# Run load function
function abchc:modifiers/random_structures/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page