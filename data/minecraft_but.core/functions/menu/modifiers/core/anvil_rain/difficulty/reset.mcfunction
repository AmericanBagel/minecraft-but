#> minecraft_but.core:menu/modifiers/core/anvil_rain/difficulty/reset
# Reset anvil_rain difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/anvil_rain/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.anvil_rain minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/anvil_rain/config