#> abchc:menu/modifiers/core/anvil_rain/chance/5down
# Decrease anvil_rain config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/anvil_rain/**
# @context player

#> Remove 5 from score
scoreboard players remove anvil_rain.chance abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/anvil_rain/config