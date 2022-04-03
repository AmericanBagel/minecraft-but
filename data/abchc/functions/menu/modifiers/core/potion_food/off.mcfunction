#> abchc:menu/modifiers/core/potion_food/off
#Automatically generated toggle off function for potion_food
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set potion_food abch.toggle 0

# Run unload function
function abchc:modifiers/potion_food/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory