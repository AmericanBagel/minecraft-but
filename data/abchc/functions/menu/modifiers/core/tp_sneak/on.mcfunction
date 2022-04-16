#> abchc:menu/modifiers/core/tp_sneak/on
#Automatically generated toggle on function for tp_sneak
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tp_sneak abch.toggle 1

# Run load function
function abchc:modifiers/tp_sneak/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page