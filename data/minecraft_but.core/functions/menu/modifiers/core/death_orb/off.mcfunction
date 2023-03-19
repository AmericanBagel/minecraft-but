#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_orb/off
#Automatically generated toggle off function for death_orb
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set death_orb minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/death_orb/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos