#> abchc:menu/modifiers/core/explosive_phantoms/radius/5down
# Decrease explosive_phantoms config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_phantoms/**
# @context player

#> Remove 5 from score
scoreboard players remove explosive_phantoms.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_phantoms/config