#> minecraft_but.coreraft_but.core:menu/modifiers/core/pacifist/off
#Automatically generated toggle off function for pacifist
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set pacifist minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/pacifist/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mechanic