#> abchc:menu/modifiers/core/explosive_snowballs/radius/5down
# Decrease explosive_snowballs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_snowballs/**
# @context player

#> Remove 5 from score
scoreboard players remove explosive_snowballs.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_snowballs/config