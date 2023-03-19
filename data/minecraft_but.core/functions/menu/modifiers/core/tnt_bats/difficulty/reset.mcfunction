#> minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/difficulty/reset
# Reset tnt_bats difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/**
# @context player

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.tnt_bats minecraft_but.config = difficulty.global minecraft_but.config

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/tnt_bats/config