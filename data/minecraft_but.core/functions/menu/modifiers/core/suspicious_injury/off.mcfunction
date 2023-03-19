#> minecraft_but.coreraft_but.core:menu/modifiers/core/suspicious_injury/off
#Automatically generated toggle off function for suspicious_injury
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set suspicious_injury minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/suspicious_injury/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects