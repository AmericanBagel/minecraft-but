#> abchc:menu/modifiers/core/carnivore/difficulty/reset
# Reset carnivore difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/carnivore/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.carnivore abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/carnivore/config