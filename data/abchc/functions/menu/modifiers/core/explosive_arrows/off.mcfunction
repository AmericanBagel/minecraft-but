#> abchc:menu/modifiers/core/explosive_arrows/off
#Automatically generated toggle off function for explosive_arrows
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set explosive_arrows abch.toggle 0

# Run unload function
function abchc:modifiers/explosive_arrows/unload

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page