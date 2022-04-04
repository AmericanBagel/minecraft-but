#> abchc:menu/modifiers/core/degradation/difficulty/reset
# Reset degradation difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/degradation/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.degradation abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/degradation/config