#> minecraft_but.core:menu/modifiers/core/explosive_arrows/radius/5down
# Decrease explosive_arrows config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/explosive_arrows/**
# @context player

#> Remove 5 from score
scoreboard players remove explosive_arrows.radius minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/explosive_arrows/config