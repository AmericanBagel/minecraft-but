#> abchc:menu/modifiers/core/effect_arrows/off
#Automatically generated toggle off function for effect_arrows
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set effect_arrows abch.toggle 0

# Run unload function
function abchc:modifiers/effect_arrows/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/directory