#> abchc:menu/modifiers/core/lightning_storm/off
#Automatically generated toggle off function for lightning_storm
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lightning_storm abch.toggle 0

# Run unload function
function abchc:modifiers/lightning_storm/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page