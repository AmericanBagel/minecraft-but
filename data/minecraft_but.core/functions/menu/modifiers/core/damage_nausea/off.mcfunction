#> minecraft_but.coreraft_but.core:menu/modifiers/core/damage_nausea/off
#Automatically generated toggle off function for damage_nausea
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set damage_nausea minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/damage_nausea/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects