#> minecraft_but.coreraft_but.core:menu/modifiers/core/volatile_creepers/off
#Automatically generated toggle off function for volatile_creepers
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set volatile_creepers minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/volatile_creepers/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/undefined