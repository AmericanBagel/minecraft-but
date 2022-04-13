#> abchc:menu/modifiers/core/random_teleport/radius/1down
# Decrease random_teleport config score radius by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_teleport/**
# @context player

#> Remove 1 from score
scoreboard players remove random_teleport.radius abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_teleport/config