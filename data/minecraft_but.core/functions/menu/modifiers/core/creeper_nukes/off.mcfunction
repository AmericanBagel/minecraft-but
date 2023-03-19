#> minecraft_but.core:menu/modifiers/core/creeper_nukes/off
#Automatically generated toggle off function for creeper_nukes
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set creeper_nukes minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/creeper_nukes/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/explosions