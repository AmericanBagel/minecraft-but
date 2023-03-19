#> abchc:menu/modifiers/core/no_jump/on
#Automatically generated toggle on function for no_jump
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_jump abch.toggle 1

# Run load function
function abchc:modifiers/no_jump/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic