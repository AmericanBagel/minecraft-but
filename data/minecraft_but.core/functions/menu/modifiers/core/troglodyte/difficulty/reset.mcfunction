#> minecraft_but.core:menu/modifiers/core/troglodyte/difficulty/reset
# Reset troglodyte difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/troglodyte/**
# @context player

#> Click sound
function minecraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.troglodyte minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.core:menu/modifiers/core/troglodyte/config