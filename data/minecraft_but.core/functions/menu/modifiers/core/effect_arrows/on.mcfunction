#> minecraft_but.coreraft_but.core:menu/modifiers/core/effect_arrows/on
#Automatically generated toggle on function for effect_arrows
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set effect_arrows minecraft_but.toggle 1

# Run load function
function minecraft_but.coreraft_but.core:modifiers/effect_arrows/load

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page