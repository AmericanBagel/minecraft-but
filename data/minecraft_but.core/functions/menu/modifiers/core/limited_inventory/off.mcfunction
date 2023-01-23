#> minecraft_but.core:menu/modifiers/core/limited_inventory/off
#Automatically generated toggle off function for limited_inventory
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set limited_inventory minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/limited_inventory/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/challenges