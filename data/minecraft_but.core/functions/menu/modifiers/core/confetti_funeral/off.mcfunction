#> minecraft_but.coreraft_but.core:menu/modifiers/core/confetti_funeral/off
#Automatically generated toggle off function for confetti_funeral
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set confetti_funeral minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/confetti_funeral/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/misc