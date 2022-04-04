#> abchc:menu/modifiers/core/lightning_storm/on
#Automatically generated toggle on function for lightning_storm
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lightning_storm abch.toggle 1

# Run load function
function abchc:modifiers/lightning_storm/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory