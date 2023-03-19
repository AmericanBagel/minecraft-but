#> abchc:menu/modifiers/core/death_swap/interval_max/5up
# Increase death_swap config score interval_max by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Add 5 to score
scoreboard players add death_swap.interval_max abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config