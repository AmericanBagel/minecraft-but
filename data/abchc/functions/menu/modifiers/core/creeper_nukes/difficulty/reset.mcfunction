#> abchc:menu/modifiers/core/creeper_nukes/difficulty/reset
# Reset creeper_nukes difficulty to global difficulty
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/creeper_nukes/**
# @context player

#> Click sound
function abchc:menu/actions/click

#> Reset to global difficulty
scoreboard players operation difficulty.creeper_nukes abch.config = difficulty.global abch.config

#> Update menu
function abchc:menu/modifiers/core/creeper_nukes/config