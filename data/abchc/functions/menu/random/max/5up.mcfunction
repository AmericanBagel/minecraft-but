#> abchc:menu/random/max/5up
# Increase random config score modifiers by 5
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Add 5 to score
scoreboard players add random.max abch.config 5

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config