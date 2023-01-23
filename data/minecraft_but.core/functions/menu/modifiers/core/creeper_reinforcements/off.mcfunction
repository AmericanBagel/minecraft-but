#> minecraft_but.core:menu/modifiers/core/creeper_reinforcements/off
#Automatically generated toggle off function for creeper_reinforcements
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set creeper_reinforcements minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/creeper_reinforcements/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/find_page