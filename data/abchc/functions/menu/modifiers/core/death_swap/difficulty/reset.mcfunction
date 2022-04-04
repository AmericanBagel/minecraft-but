#> abchc:menu/modifiers/core/death_swap/difficulty/reset
# Reset death_swap difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.death_swap abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/death_swap/config