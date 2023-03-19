#> abchc:menu/modifiers/core/deadly_colors/interval/1down
# Decrease deadly_colors config score interval by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/deadly_colors/**
# @context player

#> Remove 1 from score
scoreboard players remove deadly_colors.interval abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/deadly_colors/config