#> minecraft_but.core:menu/modifiers/core/random/modifiers/1down
# Decrease random config score modifiers by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.modifiers minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/random/config