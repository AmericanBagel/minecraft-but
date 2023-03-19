#> minecraft_but.coreraft_but.core:menu/modifiers/core/lazy_inventory/off
#Automatically generated toggle off function for lazy_inventory
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set lazy_inventory minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/lazy_inventory/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page