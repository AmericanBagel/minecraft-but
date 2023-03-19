#> minecraft_but.coreraft_but.core:menu/modifiers/core/fast_creepers/off
#Automatically generated toggle off function for fast_creepers
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fast_creepers minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/fast_creepers/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page