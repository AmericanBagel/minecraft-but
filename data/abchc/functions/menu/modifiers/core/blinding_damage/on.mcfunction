#> abchc:menu/modifiers/core/blinding_damage/on
#Automatically generated toggle on function for blinding_damage
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blinding_damage abch.toggle 1

# Run load function
function abchc:modifiers/blinding_damage/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page