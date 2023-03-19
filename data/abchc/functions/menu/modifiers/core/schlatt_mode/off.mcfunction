#> abchc:menu/modifiers/core/schlatt_mode/off
#Automatically generated toggle off function for schlatt_mode
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set schlatt_mode abch.toggle 0

# Run unload function
function abchc:modifiers/schlatt_mode/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/mechanic