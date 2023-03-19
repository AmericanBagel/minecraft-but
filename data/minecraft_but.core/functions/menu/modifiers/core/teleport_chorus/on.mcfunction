#> minecraft_but.coreraft_but.core:menu/modifiers/core/teleport_chorus/on
#Automatically generated toggle on function for teleport_chorus
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set teleport_chorus minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/teleport_chorus/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/teleporting