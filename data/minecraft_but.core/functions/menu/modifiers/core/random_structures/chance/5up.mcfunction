#> minecraft_but.core:menu/modifiers/core/random_structures/chance/5up
# Increase random_structures config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/random_structures/**
# @context player

#> Add 5 to score
scoreboard players add random_structures.chance minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/random_structures/config