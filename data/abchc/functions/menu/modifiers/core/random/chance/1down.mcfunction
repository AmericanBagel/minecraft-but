#> abchc:menu/modifiers/core/random/chance/1down
# Decrease random config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config