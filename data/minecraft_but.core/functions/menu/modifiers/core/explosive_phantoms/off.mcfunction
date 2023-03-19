#> minecraft_but.coreraft_but.core:menu/modifiers/core/explosive_phantoms/off
#Automatically generated toggle off function for explosive_phantoms
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set explosive_phantoms minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/explosive_phantoms/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs