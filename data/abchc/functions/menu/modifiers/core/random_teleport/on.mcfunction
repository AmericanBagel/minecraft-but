#> abchc:menu/modifiers/core/random_teleport/on
#Automatically generated toggle on function for random_teleport
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set random_teleport abch.toggle 1

# Run load function
function abchc:modifiers/random_teleport/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory