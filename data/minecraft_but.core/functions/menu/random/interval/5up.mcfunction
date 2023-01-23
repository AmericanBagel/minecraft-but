#> minecraft_but.core:menu/random/interval/5up
# Increase random config score interval by 5
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.core:menu/random/**
# @context player

#> Add 5 to score
scoreboard players add random.interval minecraft_but.config 5

#> Click sound
function minecraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.core:menu/random/config