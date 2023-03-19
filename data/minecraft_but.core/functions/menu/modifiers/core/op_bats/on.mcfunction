#> minecraft_but.coreraft_but.core:menu/modifiers/core/op_bats/on
#Automatically generated toggle on function for op_bats
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set op_bats minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/op_bats/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs