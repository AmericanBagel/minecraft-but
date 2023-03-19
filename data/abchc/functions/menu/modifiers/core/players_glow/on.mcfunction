#> abchc:menu/modifiers/core/players_glow/on
#Automatically generated toggle on function for players_glow
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set players_glow abch.toggle 1

# Run load function
function abchc:modifiers/players_glow/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page