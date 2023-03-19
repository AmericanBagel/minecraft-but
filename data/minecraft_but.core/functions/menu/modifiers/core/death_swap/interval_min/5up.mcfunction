#> minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/interval_min/5up
# Increase death_swap config score interval_min by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/**
# @context player

#> Add 5 to score
scoreboard players add death_swap.interval_min minecraft_but.config 5

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/modifiers/core/death_swap/config