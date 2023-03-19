#> minecraft_but.core:menu/modifiers/core/death_swap/interval/1down
# Decrease death_swap config score interval by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/death_swap/**
# @context player

#> Remove 1 from score
scoreboard players remove death_swap.interval minecraft_but.config 1

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/death_swap/config