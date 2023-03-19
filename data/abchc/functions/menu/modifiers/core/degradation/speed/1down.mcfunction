#> abchc:menu/modifiers/core/degradation/speed/1down
# Decrease degradation config score speed by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/degradation/**
# @context player

#> Remove 1 from score
scoreboard players remove degradation.speed abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/degradation/config