#> abchc:menu/modifiers/core/players_glow/off
#Automatically generated toggle off function for players_glow
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set players_glow abch.toggle 0

# Run unload function
function abchc:modifiers/players_glow/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page