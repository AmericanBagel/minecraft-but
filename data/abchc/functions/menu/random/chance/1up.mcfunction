#> abchc:menu/random/chance/1up
# Increase random config score chance by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add random.chance abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config