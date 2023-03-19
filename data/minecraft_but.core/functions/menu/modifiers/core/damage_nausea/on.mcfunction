#> minecraft_but.coreraft_but.core:menu/modifiers/core/damage_nausea/on
#Automatically generated toggle on function for damage_nausea
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set damage_nausea minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/damage_nausea/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects