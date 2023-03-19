#> abchc:menu/modifiers/core/explosive_sight/radius/1down
# Decrease explosive_sight config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_sight/**
# @context player

#> Remove 1 from score
scoreboard players remove explosive_sight.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_sight/config