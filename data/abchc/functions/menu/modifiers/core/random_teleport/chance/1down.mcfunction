#> abchc:menu/modifiers/core/random_teleport/chance/1down
# Decrease random_teleport config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_teleport/**
# @context player

#> Remove 1 from score
scoreboard players remove random_teleport.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_teleport/config