#> minecraft_but.coreraft_but.core:menu/modifiers/core/effect_arrows/off
#Automatically generated toggle off function for effect_arrows
# @within minecraft_but.coreraft_but.core:menu/**
# @context player

# Toggle
scoreboard players set effect_arrows minecraft_but.toggle 0

# Run unload function
function minecraft_but.coreraft_but.core:modifiers/effect_arrows/unload

# Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

# Update menu
function minecraft_but.coreraft_but.core:menu/find_page