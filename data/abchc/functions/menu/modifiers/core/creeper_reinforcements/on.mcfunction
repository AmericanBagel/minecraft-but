#> abchc:menu/modifiers/core/creeper_reinforcements/on
#Automatically generated toggle on function for creeper_reinforcements
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_reinforcements abch.toggle 1

# Run load function
function abchc:modifiers/creeper_reinforcements/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory