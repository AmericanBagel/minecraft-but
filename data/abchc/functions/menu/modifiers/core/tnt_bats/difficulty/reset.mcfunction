#> abchc:menu/modifiers/core/tnt_bats/difficulty/reset
# Reset tnt_bats difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_bats/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.tnt_bats abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/tnt_bats/config