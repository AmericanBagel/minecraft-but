#> minecraft_but.coreraft_but.core:menu/modifiers/core/random/off
#Automatically generated toggle off function for random
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/random/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/undefined