#> abchc:menu/modifiers/core/random/chance/5up
# Increase random config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random/**
# @context player

#> Add 5 to score
scoreboard players add random.chance abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random/config