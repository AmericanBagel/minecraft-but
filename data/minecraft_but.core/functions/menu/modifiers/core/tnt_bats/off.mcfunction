#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/off
#Automatically generated toggle off function for tnt_bats
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tnt_bats minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/tnt_bats/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions