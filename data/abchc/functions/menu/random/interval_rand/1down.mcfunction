#> abchc:menu/random/interval_rand/1down
# Decrease random config score interval_rand by 1
# Generated with the script at '../src/index.js'
#
# @within abchc:menu/random/**
# @context player

#> Remove 1 from score
scoreboard players remove random.interval_rand abch.config 1

#> Click sound
function abchc:menu/actions/click

#> Update menu
function abchc:menu/random/config