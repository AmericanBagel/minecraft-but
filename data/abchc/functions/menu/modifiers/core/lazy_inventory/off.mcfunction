#> abchc:menu/modifiers/core/lazy_inventory/off
#Automatically generated toggle off function for lazy_inventory
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lazy_inventory abch.toggle 0

# Run unload function
function abchc:modifiers/lazy_inventory/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page