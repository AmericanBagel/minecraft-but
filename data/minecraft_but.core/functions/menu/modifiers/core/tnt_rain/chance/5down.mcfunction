#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/chance/5down
# Decrease tnt_rain config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

#> Remove 5 from score
scoreboard players remove tnt_rain.chance minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_rain/config