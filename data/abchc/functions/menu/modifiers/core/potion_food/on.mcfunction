#> abchc:menu/modifiers/core/potion_food/on
#Automatically generated toggle on function for potion_food
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set potion_food abch.toggle 1

# Run load function
function abchc:modifiers/potion_food/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory