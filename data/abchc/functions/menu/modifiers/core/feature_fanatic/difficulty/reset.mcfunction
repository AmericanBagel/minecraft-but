#> abchc:menu/modifiers/core/feature_fanatic/difficulty/reset
# Reset feature_fanatic difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/feature_fanatic/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.feature_fanatic abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/feature_fanatic/config