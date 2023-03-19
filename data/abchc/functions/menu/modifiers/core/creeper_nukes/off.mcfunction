#> abchc:menu/modifiers/core/creeper_nukes/off
#Automatically generated toggle off function for creeper_nukes
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set creeper_nukes abch.toggle 0

# Run unload function
function abchc:modifiers/creeper_nukes/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/explosions