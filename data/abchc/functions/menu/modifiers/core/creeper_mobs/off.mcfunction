#> abchc:menu/modifiers/core/creeper_mobs/off
#Automatically generated toggle off function for creeper_mobs
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_mobs abch.toggle 0

# Run unload function
function abchc:modifiers/creeper_mobs/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page