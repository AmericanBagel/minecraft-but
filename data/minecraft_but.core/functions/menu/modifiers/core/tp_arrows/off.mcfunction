#> minecraft_but.core:menu/modifiers/core/tp_arrows/off
#Automatically generated toggle off function for tp_arrows
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set tp_arrows minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/tp_arrows/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/undefined