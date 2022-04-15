#> abchc:menu/modifiers/core/explosive_snowballs/radius/5up
# Increase explosive_snowballs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_snowballs/**
# @context player

#> Add 5 to score
scoreboard players add explosive_snowballs.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_snowballs/config