#> minecraft_but.core:menu/modifiers/core/anvil_rain/chance/5down
# Decrease anvil_rain config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Remove 5 from score
scoreboard players remove anvil_rain.chance minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/anvil_rain/config