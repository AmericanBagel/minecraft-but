#> minecraft_but.coreraft_but.core:menu/modifiers/core/no_sneak/on
#Automatically generated toggle on function for no_sneak
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set no_sneak minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/no_sneak/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/mechanic