#> abchc:menu/modifiers/core/death_swap/on
#Automatically generated toggle on function for death_swap
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set death_swap abch.toggle 1

# Run load function
function abchc:modifiers/death_swap/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/teleporting