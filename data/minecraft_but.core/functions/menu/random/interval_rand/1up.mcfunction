#> minecraft_but.coreraft_but.core:menu/random/interval_rand/1up
# Increase random config score interval_rand by 1
# Generated with the script at '../src/index.js'
#
# @within minecraft_but.coreraft_but.core:menu/random/**
# @context player

#> Add 1 to score
scoreboard players add random.interval_rand minecraft_but.config 1

#> Click sound
function minecraft_but.coreraft_but.core:menu/actions/click

#> Update menu
function minecraft_but.coreraft_but.core:menu/random/config