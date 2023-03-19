#> abchc:menu/modifiers/core/deadly_colors/difficulty/reset
# Reset deadly_colors difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/deadly_colors/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.deadly_colors abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/deadly_colors/config