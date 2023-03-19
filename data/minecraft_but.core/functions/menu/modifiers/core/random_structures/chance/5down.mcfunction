#> minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/chance/5down
# Decrease random_structures config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/**
# @context player

#> Remove 5 from score
scoreboard players remove random_structures.chance minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/random_structures/config