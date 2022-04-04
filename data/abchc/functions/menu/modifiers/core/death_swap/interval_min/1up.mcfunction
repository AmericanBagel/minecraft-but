#> abchc:menu/modifiers/core/death_swap/interval_min/1up
# Increase death_swap config score interval_min by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Add 1 to score
scoreboard players add death_swap.interval_min abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config