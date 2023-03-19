#> abchc:menu/modifiers/core/random/modifiers/5down
# Decrease random config score modifiers by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.modifiers abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config