#> abchc:menu/modifiers/core/mobs_glow/on
#Automatically generated toggle on function for mobs_glow
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set mobs_glow abch.toggle 1

# Run load function
function abchc:modifiers/mobs_glow/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory