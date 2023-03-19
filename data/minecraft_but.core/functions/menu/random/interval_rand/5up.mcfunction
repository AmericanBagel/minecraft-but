#> minecraft_but.core:menu/random/interval_rand/5up
# Increase random config score interval_rand by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Add 5 to score
scoreboard players add random.interval_rand minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/random/config