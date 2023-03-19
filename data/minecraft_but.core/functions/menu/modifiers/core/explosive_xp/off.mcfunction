#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_xp/off
#Automatically generated toggle off function for explosive_xp
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_xp minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/explosive_xp/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page