#> abchc:menu/modifiers/core/limited_inventory/off
#Automatically generated toggle off function for limited_inventory
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set limited_inventory abch.toggle 0

# Run unload function
function abchc:modifiers/limited_inventory/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/challenges