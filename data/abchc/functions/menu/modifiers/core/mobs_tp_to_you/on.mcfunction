#> abchc:menu/modifiers/core/mobs_tp_to_you/on
#Automatically generated toggle on function for mobs_tp_to_you
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set mobs_tp_to_you abch.toggle 1

# Run load function
function abchc:modifiers/mobs_tp_to_you/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/teleporting