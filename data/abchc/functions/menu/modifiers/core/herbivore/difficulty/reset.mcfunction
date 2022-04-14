#> abchc:menu/modifiers/core/herbivore/difficulty/reset
# Reset herbivore difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/herbivore/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.herbivore abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/herbivore/config