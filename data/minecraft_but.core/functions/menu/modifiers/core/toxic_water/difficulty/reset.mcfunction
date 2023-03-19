#> minecraft_but.core:menu/modifiers/core/toxic_water/difficulty/reset
# Reset toxic_water difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/toxic_water/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.toxic_water minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/toxic_water/config