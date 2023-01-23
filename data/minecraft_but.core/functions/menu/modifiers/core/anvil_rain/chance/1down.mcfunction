#> minecraft_but.core:menu/modifiers/core/anvil_rain/chance/1down
# Decrease anvil_rain config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Remove 1 from score
scoreboard players remove anvil_rain.chance minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/anvil_rain/config