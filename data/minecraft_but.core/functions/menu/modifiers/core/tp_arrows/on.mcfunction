#> minecraft_but.coreraft_but.core:menu/modifiers/core/tp_arrows/on
#Automatically generated toggle on function for tp_arrows
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tp_arrows minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/tp_arrows/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/undefined