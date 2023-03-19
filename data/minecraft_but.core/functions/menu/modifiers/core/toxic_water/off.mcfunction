#> minecraft_but.coreraft_but.core:menu/modifiers/core/toxic_water/off
#Automatically generated toggle off function for toxic_water
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set toxic_water minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/toxic_water/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/challenges