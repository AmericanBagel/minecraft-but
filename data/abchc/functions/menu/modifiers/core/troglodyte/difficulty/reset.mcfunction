#> abchc:menu/modifiers/core/troglodyte/difficulty/reset
# Reset troglodyte difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/troglodyte/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.troglodyte abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/troglodyte/config