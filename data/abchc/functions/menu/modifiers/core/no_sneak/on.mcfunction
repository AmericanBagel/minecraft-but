#> abchc:menu/modifiers/core/no_sneak/on
#Automatically generated toggle on function for no_sneak
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_sneak abch.toggle 1

# Run load function
function abchc:modifiers/no_sneak/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory