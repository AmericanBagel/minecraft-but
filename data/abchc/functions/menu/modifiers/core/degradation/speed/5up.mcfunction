#> abchc:menu/modifiers/core/degradation/speed/5up
# Increase degradation config score speed by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/degradation/**
# @context player

#> Add 5 to score
scoreboard players add degradation.speed abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/degradation/config