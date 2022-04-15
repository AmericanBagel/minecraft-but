#> abchc:menu/random/interval_rand/5up
# Increase random config score interval_rand by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Add 5 to score
scoreboard players add random.interval_rand abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config