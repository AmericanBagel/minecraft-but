#> abchc:menu/modifiers/core/tnt_rain/chance/1up
# Increase tnt_rain config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_rain/**
# @context player

#> Add 1 to score
scoreboard players add tnt_rain.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/tnt_rain/config