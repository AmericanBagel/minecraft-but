#> abchc:menu/modifiers/core/random_teleport/chance/1up
# Increase random_teleport config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/modifiers/core/random_teleport/**
# @context player

#> Add 1 to score
scoreboard players add random_teleport.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/modifiers/core/random_teleport/config