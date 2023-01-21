#> abchc:menu/modifiers/core/teleport_chorus/on
#Automatically generated toggle on function for teleport_chorus
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set teleport_chorus abch.toggle 1

# Run load function
function abchc:modifiers/teleport_chorus/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/teleporting