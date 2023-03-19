#> abchc:menu/modifiers/core/random_structures/chance/1down
# Decrease random_structures config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_structures/**
# @context player

#> Remove 1 from score
scoreboard players remove random_structures.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_structures/config