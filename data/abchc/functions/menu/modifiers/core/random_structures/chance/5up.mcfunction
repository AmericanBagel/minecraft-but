#> abchc:menu/modifiers/core/random_structures/chance/5up
# Increase random_structures config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_structures/**
# @context player

#> Add 5 to score
scoreboard players add random_structures.chance abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_structures/config