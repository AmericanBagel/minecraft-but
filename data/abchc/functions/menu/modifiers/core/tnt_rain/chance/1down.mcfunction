#> abchc:menu/modifiers/core/tnt_rain/chance/1down
# Decrease tnt_rain config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_rain/**
# @context player

#> Remove 1 from score
scoreboard players remove tnt_rain.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_rain/config