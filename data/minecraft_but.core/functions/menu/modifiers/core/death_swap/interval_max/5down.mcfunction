#> minecraft_but.core:menu/modifiers/core/death_swap/interval_max/5down
# Decrease death_swap config score interval_max by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/modifiers/core/death_swap/**
# @context player

#> Remove 5 from score
scoreboard players remove death_swap.interval_max minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/modifiers/core/death_swap/config