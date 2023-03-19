#> minecraft_but.coreraft_but.core:menu/modifiers/core/tp_sneak/off
#Automatically generated toggle off function for tp_sneak
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tp_sneak minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/tp_sneak/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page