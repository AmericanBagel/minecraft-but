#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/on
#Automatically generated toggle on function for tnt_bats
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tnt_bats minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/tnt_bats/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/explosions