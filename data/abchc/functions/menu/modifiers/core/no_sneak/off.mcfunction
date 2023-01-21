#> abchc:menu/modifiers/core/no_sneak/off
#Automatically generated toggle off function for no_sneak
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set no_sneak abch.toggle 0

# Run unload function
function abchc:modifiers/no_sneak/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic