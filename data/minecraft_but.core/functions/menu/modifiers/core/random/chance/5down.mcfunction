#> minecraft_but.core:menu/modifiers/core/random/chance/5down
# Decrease random config score chance by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/random/**
# @context player

#> Remove 5 from score
scoreboard players remove random.chance minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/random/config