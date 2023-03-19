#> minecraft_but.coreraft_but.core:menu/modifiers/core/realistic_spiders/off
#Automatically generated toggle off function for realistic_spiders
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set realistic_spiders minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/realistic_spiders/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mobs