#> minecraft_but.coreraft_but.core:menu/modifiers/core/random_effects/on
#Automatically generated toggle on function for random_effects
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set random_effects minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/random_effects/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/effects