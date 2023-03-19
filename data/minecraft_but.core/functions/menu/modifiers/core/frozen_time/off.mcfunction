#> minecraft_but.coreraft_but.core:menu/modifiers/core/frozen_time/off
#Automatically generated toggle off function for frozen_time
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set frozen_time minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/frozen_time/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc