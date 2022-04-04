#> abchc:menu/modifiers/core/fast_arrows/off
#Automatically generated toggle off function for fast_arrows
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set fast_arrows abch.toggle 0

# Run unload function
function abchc:modifiers/fast_arrows/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory