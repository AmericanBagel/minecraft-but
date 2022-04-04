#> abchc:menu/modifiers/core/blinding_light/on
#Automatically generated toggle on function for blinding_light
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set blinding_light abch.toggle 1

# Run load function
function abchc:modifiers/blinding_light/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory