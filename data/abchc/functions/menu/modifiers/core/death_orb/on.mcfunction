#> abchc:menu/modifiers/core/death_orb/on
#Automatically generated toggle on function for death_orb
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set death_orb abch.toggle 1

# Run load function
function abchc:modifiers/death_orb/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/chaos