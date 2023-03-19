#> abchc:menu/modifiers/core/death_swap/interval/1down
# Decrease death_swap config score interval by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/death_swap/**
# @context player

#> Remove 1 from score
scoreboard players remove death_swap.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/death_swap/config