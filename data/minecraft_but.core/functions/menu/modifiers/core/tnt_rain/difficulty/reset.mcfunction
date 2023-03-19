#> minecraft_but.core:menu/modifiers/core/tnt_rain/difficulty/reset
# Reset tnt_rain difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/tnt_rain/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.tnt_rain minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/tnt_rain/config