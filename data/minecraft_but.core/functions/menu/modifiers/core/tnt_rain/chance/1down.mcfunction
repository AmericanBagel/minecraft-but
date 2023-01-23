#> minecraft_but.core:menu/modifiers/core/tnt_rain/chance/1down
# Decrease tnt_rain config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

#> Remove 1 from score
scoreboard players remove tnt_rain.chance minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/tnt_rain/config