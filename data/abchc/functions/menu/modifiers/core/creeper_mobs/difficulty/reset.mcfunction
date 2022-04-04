#> abchc:menu/modifiers/core/creeper_mobs/difficulty/reset
# Reset creeper_mobs difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/creeper_mobs/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.creeper_mobs abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/creeper_mobs/config