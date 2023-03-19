#> minecraft_but.coreraft_but.core:menu/modifiers/core/mobs_glow/off
#Automatically generated toggle off function for mobs_glow
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set mobs_glow minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/mobs_glow/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page