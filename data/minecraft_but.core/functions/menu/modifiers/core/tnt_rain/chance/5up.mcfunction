#> minecraft_but.core:menu/modifiers/core/tnt_rain/chance/5up
# Increase tnt_rain config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

#> Add 5 to score
scoreboard players add tnt_rain.chance minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/tnt_rain/config