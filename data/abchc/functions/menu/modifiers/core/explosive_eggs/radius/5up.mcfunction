#> abchc:menu/modifiers/core/explosive_eggs/radius/5up
# Increase explosive_eggs config score radius by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/explosive_eggs/**
# @context player

#> Add 5 to score
scoreboard players add explosive_eggs.radius abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/explosive_eggs/config