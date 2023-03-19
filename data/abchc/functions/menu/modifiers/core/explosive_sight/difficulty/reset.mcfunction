#> abchc:menu/modifiers/core/explosive_sight/difficulty/reset
# Reset explosive_sight difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_sight/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.explosive_sight abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/explosive_sight/config