#> abchc:menu/modifiers/core/tp_arrows/off
#Automatically generated toggle off function for tp_arrows
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tp_arrows abch.toggle 0

# Run unload function
function abchc:modifiers/tp_arrows/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/modifiers/core/undefined