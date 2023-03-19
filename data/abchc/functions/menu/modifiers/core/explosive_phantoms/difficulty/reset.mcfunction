#> abchc:menu/modifiers/core/explosive_phantoms/difficulty/reset
# Reset explosive_phantoms difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.explosive_phantoms abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/explosive_phantoms/config