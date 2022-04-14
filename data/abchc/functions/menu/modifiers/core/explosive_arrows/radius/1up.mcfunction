#> abchc:menu/modifiers/core/explosive_arrows/radius/1up
# Increase explosive_arrows config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_arrows/**
# @context player

#> Add 1 to score
scoreboard players add explosive_arrows.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_arrows/config