#> minecraft_but.core:menu/modifiers/core/teleport_chorus/off
#Automatically generated toggle off function for teleport_chorus
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set teleport_chorus minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/teleport_chorus/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/teleporting