#> minecraft_but.core:menu/modifiers/core/lazy_inventory/on
#Automatically generated toggle on function for lazy_inventory
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set lazy_inventory minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/lazy_inventory/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page