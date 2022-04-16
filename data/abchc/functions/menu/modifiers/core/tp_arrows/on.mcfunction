#> abchc:menu/modifiers/core/tp_arrows/on
#Automatically generated toggle on function for tp_arrows
# @within abchc:menu/**
# @context player

# Toggle
scoreboard players set tp_arrows abch.toggle 1

# Run load function
function abchc:modifiers/tp_arrows/load

# Click sound
function abchc:menu/actions/click

# Update menu
function abchc:menu/find_page