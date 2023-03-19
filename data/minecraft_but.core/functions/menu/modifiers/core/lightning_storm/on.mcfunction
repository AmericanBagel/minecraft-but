#> minecraft_but.coreraft_but.core:menu/modifiers/core/lightning_storm/on
#Automatically generated toggle on function for lightning_storm
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set lightning_storm minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/lightning_storm/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/chaos