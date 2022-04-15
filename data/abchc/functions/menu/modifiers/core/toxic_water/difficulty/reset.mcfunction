#> abchc:menu/modifiers/core/toxic_water/difficulty/reset
# Reset toxic_water difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/toxic_water/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.toxic_water abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/toxic_water/config