#> minecraft_but.core:menu/modifiers/core/fast_arrows/on
#Automatically generated toggle on function for fast_arrows
# @within minecraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set fast_arrows minecraft_but.toggle 1

# Run load function
function minecraft_but.core:modifiers/fast_arrows/load

# Click sound
function minecraft_but.core:menu/actions/click

# Update menu
function minecraft_but.core:menu/modifiers/core/misc