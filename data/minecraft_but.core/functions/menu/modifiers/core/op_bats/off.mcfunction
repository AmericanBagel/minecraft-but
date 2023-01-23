#> minecraft_but.core:menu/modifiers/core/op_bats/off
#Automatically generated toggle off function for op_bats
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set op_bats minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/op_bats/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/mobs