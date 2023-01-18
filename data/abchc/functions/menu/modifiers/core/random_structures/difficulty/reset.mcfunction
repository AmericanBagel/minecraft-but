#> abchc:menu/modifiers/core/random_structures/difficulty/reset
# Reset random_structures difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_structures/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.random_structures abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/random_structures/config