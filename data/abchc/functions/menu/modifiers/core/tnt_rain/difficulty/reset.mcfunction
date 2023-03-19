#> abchc:menu/modifiers/core/tnt_rain/difficulty/reset
# Reset tnt_rain difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/tnt_rain/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.tnt_rain abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/tnt_rain/config