#> abchc:menu/modifiers/core/degradation/speed/5down
# Decrease degradation config score speed by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/degradation/**
# @context player

#> Remove 5 from score
scoreboard players remove degradation.speed abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/degradation/config