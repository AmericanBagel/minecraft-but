#> abchc:menu/modifiers/core/lazy_inventory/on
#Automatically generated toggle on function for lazy_inventory
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set lazy_inventory abch.toggle 1

# Run load function
function abchc:modifiers/lazy_inventory/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page