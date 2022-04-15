#> abchc:menu/modifiers/core/explosive_snowballs/radius/1up
# Increase explosive_snowballs config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_snowballs/**
# @context player

#> Add 1 to score
scoreboard players add explosive_snowballs.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_snowballs/config