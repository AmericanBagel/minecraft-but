#> minecraft_but.core:menu/modifiers/core/fast_arrows/off
#Automatically generated toggle off function for fast_arrows
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fast_arrows minecraft_but.toggle 0

# Run unload function
function minecraft_but.core:modifiers/fast_arrows/unload

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc