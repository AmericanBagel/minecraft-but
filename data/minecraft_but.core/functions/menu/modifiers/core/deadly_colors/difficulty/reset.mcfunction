#> minecraft_but.core:menu/modifiers/core/deadly_colors/difficulty/reset
# Reset deadly_colors difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/deadly_colors/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.deadly_colors minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/deadly_colors/config