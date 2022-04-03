#> abchc:menu/modifiers/core/limited_inventory/on
#Automatically generated toggle on function for limited_inventory
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set limited_inventory abch.toggle 1

# Run load function
function abchc:modifiers/limited_inventory/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/directory