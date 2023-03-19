#> minecraft_but.coreraft_but.core:menu/modifiers/core/limited_inventory/on
#Automatically generated toggle on function for limited_inventory
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set limited_inventory minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/limited_inventory/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges